#!/bin/sh

#PJM -L rscgrp=regular-a
#PJM -L node=1
#PJM -L elapse=48:00:00
#PJM -g gs84
#PJM -j

module load cuda/11.1
module load pytorch/1.8.1

source /work/02/gs84/s84000/inductive_node_classification_models/.venv/bin/activate
python3 gnn/tuning.py \
    --gpu_ids 0,1,2,3,4,5,6,7 \
    --batch_size 64 \
    --verbose \
    --loss_name bce \
    --network_name gmlp \
    --dataset_name ppi \
    --train_transform_name indegree \
    --val_transform_name indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 1000 \
    --data_dir ./inputs/PPI/ \
    --index_file_dir ./inputs/PPI/10fold_idx/ \
    --name tuning_gmlp_ppi \
    --save_freq 5 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name tuning_gmlp_ppi \
    --lr 1e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.5 \
    --hidden_dim 128 \
    --ffn_dim 1024 \
    --n_layers 6 \
    --prob_survival 1.0 &
python3 gnn/tuning.py \
    --gpu_ids 0,1,2,3,4,5,6,7 \
    --batch_size 64 \
    --verbose \
    --loss_name bce \
    --network_name gmlp \
    --dataset_name ppi \
    --train_transform_name indegree \
    --val_transform_name indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 1000 \
    --data_dir ./inputs/PPI/ \
    --index_file_dir ./inputs/PPI/10fold_idx/ \
    --name tuning_gmlp_ppi \
    --save_freq 5 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name tuning_gmlp_ppi \
    --lr 1e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.5 \
    --hidden_dim 128 \
    --ffn_dim 1024 \
    --n_layers 6 \
    --prob_survival 1.0 &
python3 gnn/tuning.py \
    --gpu_ids 0,1,2,3,4,5,6,7 \
    --batch_size 64 \
    --verbose \
    --loss_name bce \
    --network_name gmlp \
    --dataset_name ppi \
    --train_transform_name indegree \
    --val_transform_name indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 1000 \
    --data_dir ./inputs/PPI/ \
    --index_file_dir ./inputs/PPI/10fold_idx/ \
    --name tuning_gmlp_ppi \
    --save_freq 5 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name tuning_gmlp_ppi \
    --lr 1e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.5 \
    --hidden_dim 128 \
    --ffn_dim 1024 \
    --n_layers 6 \
    --prob_survival 1.0 &
python3 gnn/tuning.py \
    --gpu_ids 0,1,2,3,4,5,6,7 \
    --batch_size 64 \
    --verbose \
    --loss_name bce \
    --network_name gmlp \
    --dataset_name ppi \
    --train_transform_name indegree \
    --val_transform_name indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 1000 \
    --data_dir ./inputs/PPI/ \
    --index_file_dir ./inputs/PPI/10fold_idx/ \
    --name tuning_gmlp_ppi \
    --save_freq 5 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name tuning_gmlp_ppi \
    --lr 1e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.5 \
    --hidden_dim 128 \
    --ffn_dim 1024 \
    --n_layers 6 \
    --prob_survival 1.0 &
python3 gnn/tuning.py \
    --gpu_ids 0,1,2,3,4,5,6,7 \
    --batch_size 64 \
    --verbose \
    --loss_name bce \
    --network_name gmlp \
    --dataset_name ppi \
    --train_transform_name indegree \
    --val_transform_name indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 1000 \
    --data_dir ./inputs/PPI/ \
    --index_file_dir ./inputs/PPI/10fold_idx/ \
    --name tuning_gmlp_ppi \
    --save_freq 5 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name tuning_gmlp_ppi \
    --lr 1e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.5 \
    --hidden_dim 128 \
    --ffn_dim 1024 \
    --n_layers 6 \
    --prob_survival 1.0 &
wait
