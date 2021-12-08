# 1
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1124_tuning_gmlp_graph_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1124 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
# python3 gnn/tuning.py --gpu_ids 0 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1124_tuning_gmlp_graph_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1124 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
# python3 gnn/tuning.py --gpu_ids 0 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1124_tuning_gmlp_graph_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1124 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1124_tuning_gmlp_graph_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1124 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1124_tuning_gmlp_graph_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1124 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &