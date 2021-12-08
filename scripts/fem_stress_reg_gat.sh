python3 gnn/train.py \
    --gpu_ids 0 \
    --batch_size 32 \
    --verbose \
    --loss_name mse \
    --network_name gat_node \
    --dataset_name fem_stress_reg \
    --train_transform_name pos_as_attr \
    --val_transform_name pos_as_attr \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 100 \
    --data_dir ./inputs/FEM_STRESS_REG/ \
    --name gat_node_fem_stress_reg \
    --save_freq 10 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name layer_4_512_100 \
    --lr 2.5e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --hidden_dim 512 \
    --n_layers 4 \
    --n_heads 4 \
    --dropout_rate 0.1 \
    --lr_decay_iters 30 \
    --lr_decay_gamma 0.3 \
    --regression

python3 gnn/inference.py \
    --gpu_ids 0 \
    --batch_size 32 \
    --verbose \
    --network_name gat_node \
    --dataset_name fem_stress_reg \
    --name gat_node_fem_stress_reg \
    --mlflow_root_dir ./mlruns/ \
    --run_name layer_4_512_100 \
    --save_freq 10 \
    --save_dir ./checkpoints \
    --regression