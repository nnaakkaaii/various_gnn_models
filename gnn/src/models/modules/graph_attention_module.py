import argparse

import torch
import torch.nn as nn
import torch.nn.functional as f

from .attention_modules import attention_modules, attention_module_options


def create_module(opt: argparse.Namespace) -> nn.Module:
    return GraphAttentionModule(opt, opt.attention_module_name, opt.in_dim, opt.out_dim,
                                opt.attention_hidden_dim, opt.n_heads, opt.gat_dropout_rate)


def module_modify_commandline_options(parser: argparse.ArgumentParser) -> argparse.ArgumentParser:
    parser.add_argument('--attention_module_name', type=str, required=True, choices=attention_modules.keys())
    opt, _ = parser.parse_known_args()
    attention_module_modify_commandline_options = attention_module_options[opt.attention_module_name]
    parser = attention_module_modify_commandline_options(parser)

    parser.add_argument('--attention_hidden_dim', type=int, default=8, help='attentionの出力次元=hidden dim')
    parser.add_argument('--n_heads', type=int, default=8, help='attentionのマルチヘッド数')
    parser.add_argument('--gat_dropout_rate', type=float, default=0.1, help='gatで利用するdropout_rate')
    return parser


class GraphAttentionModule(nn.Module):
    def __init__(self, opt: argparse.Namespace, attention_module_name: str, in_dim: int, out_dim: int,
                 attention_hidden_dim: int, n_heads: int, gat_dropout_rate: float) -> None:
        super().__init__()
        self.gat_dropout_rate = gat_dropout_rate

        self.attentions = nn.ModuleList()
        for _ in range(n_heads):
            self.attentions.append(nn.Linear(in_dim, attention_hidden_dim))
            self.attentions.append(attention_modules[attention_module_name](attention_hidden_dim, opt))
            self.attentions.append(nn.ELU())

        self.out_attention = nn.ModuleList()
        self.out_attention.append(nn.Linear(attention_hidden_dim * n_heads, out_dim))
        self.out_attention.append(attention_modules[attention_module_name](out_dim, opt))

    def forward(self, x: torch.Tensor, adj: torch.Tensor) -> torch.Tensor:
        x = f.dropout(x, self.gat_dropout_rate, training=self.training)
        x = torch.cat([att(x, x, x, adj) for att in self.attentions], dim=1)
        x = f.dropout(x, self.gat_dropout_rate, training=self.training)
        x = f.elu(self.out_att(x, x, x, adj))
        return f.log_softmax(x, dim=1)
