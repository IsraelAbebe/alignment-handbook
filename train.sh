# Full training with ZeRO-3 on 8 GPUs
task='sft'
model_name='zephyr-7b-gemma'


ACCELERATE_LOG_LEVEL=info accelerate launch --config_file recipes/accelerate_configs/deepspeed_zero3.yaml scripts/run_{task}.py recipes/{model_name}/{task}/config_full.yaml
