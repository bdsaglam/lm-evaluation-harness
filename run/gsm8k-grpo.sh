#! /bin/bash

MODEL=$1
PORT=$2

lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_grpo \
    --system_instruction "Respond in the following format:\n\n<think>\n...\n</think>\n<answer>...</answer>" \
    --model_args model=$MODEL,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:$PORT/v1/chat/completions