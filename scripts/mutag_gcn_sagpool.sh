python3 -m visdom.server -logging_level WARNING & python3 gnn/train.py \
    --gpu_ids 0 \
    --verbose \
    --loss_name mce \
    --task_type graph_classification \
    --network_name GNNPool \
    --dataset_name MUTAG \
    --train_transform_name indegree \
    --test_transform_name indegree \
    --optimizer_name adam \
    --n_epochs 100 \
    --data_dir ./inputs/MUTAG/ \
    --index_file_dir ./inputs/MUTAG/10fold_idx/ \
    --name gcn_sagpool_mutag \
    --save_freq 5 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name debug_gcn_sagpool_mutag \
    --lr 1e-3 \
    --beta1 0.9 \
    --beta2 0.999 \
    --gnn_type GCN \
    --pool_type SAGPool
