python3 gnn/train.py \
    --gpu_ids 0 \
    --batch_size 64 \
    --verbose \
    --loss_name mce \
    --network_name gmlp \
    --dataset_name dd \
    --train_transform_name cls_token_indegree \
    --val_transform_name cls_token_indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 1000 \
    --data_dir ./inputs/DD/ \
    --name gmlp_dd \
    --save_freq 10 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name layer_4 \
    --lr 2.5e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --hidden_dim 32 \
    --ffn_dim 512 \
    --n_layers 4 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.3 \
    --prob_survival 0.8
