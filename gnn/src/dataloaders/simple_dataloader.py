import argparse

import torch.utils.data as data


def create_dataloader(dataset: data.Dataset, is_train: bool, opt: argparse.Namespace) -> data.DataLoader:
    return data.DataLoader(dataset, batch_size=opt.batch_size, shuffle=not opt.serial_batches and is_train, num_workers=int(opt.num_threads))


def dataloader_modify_commandline_options(parser: argparse.ArgumentParser) -> argparse.ArgumentParser:
    parser.add_argument('--serial_batches', action='store_true', help='dataloaderの読み込み順をランダムにするか')
    parser.add_argument('--num_threads', type=int, default=0, help='データローダーの並列数')
    return parser
