python3 gnn/tuning.py \
    --gpu_ids 0 \
    --batch_size 64 \
    --verbose \
    --loss_name mce \
    --network_name gmlp \
    --dataset_name nci1 \
    --train_transform_name indegree \
    --val_transform_name indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 150 \
    --data_dir ./inputs/NCI1/ \
    --name tuning_gmlp_nci1_mean_max_sort_jk \
    --save_freq 10 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name mean_max_sort_jk \
    --lr 2.5e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --hidden_dim 32 \
    --ffn_dim 512 \
    --n_layers 4 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.3 \
    --prob_survival 1.
