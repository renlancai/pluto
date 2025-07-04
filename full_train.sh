export PYTHONPATH=$PYTHONPATH:$(pwd)

cach_path=cache_pluto_1M
# CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
# CUDA_VISIBLE_DEVICES=0,1,2,3
CUDA_VISIBLE_DEVICES=2,3,4,5,6,7 python run_training.py \
  py_func=train +training=train_pluto \
  worker=single_machine_thread_pool worker.max_workers=32 \
  scenario_builder=nuplan cache.cache_path=/workspace/alex1_slam/nuplan/exp/$cach_path cache.use_cache_without_dataset=true \
  data_loader.params.batch_size=64 data_loader.params.num_workers=16 \
  lr=1e-3 epochs=25 warmup_epochs=3 weight_decay=0.0001
