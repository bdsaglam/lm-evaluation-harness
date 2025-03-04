## Setup

```
pip install -e .[api]
```


## Transformers

```sh

export MODEL='/home/baris/.cache/huggingface/hub/models--meta-llama--Meta-Llama-3.1-8B-Instruct/snapshots/0e9e39f249a16976918f6564b8830bc894c89659/'

export TASKS='gsm8k'

lm_eval \
    --output_path outputs \
    --log_samples \
    --batch_size 16 \
    --device cuda:0 \
    --tasks $TASKS \
    --model hf \
    --model_args pretrained=$MODEL,dtype="bfloat16"

```


## Accelerate

```sh

export MODEL='/home/baris/.cache/huggingface/hub/models--meta-llama--Meta-Llama-3.1-8B-Instruct/snapshots/0e9e39f249a16976918f6564b8830bc894c89659/'

export TASKS='gsm8k'

accelerate launch --config_file configs/multi-gpu.yaml -m lm_eval \
    --output_path outputs \
    --log_samples \
    --batch_size 16 \
    --tasks $TASKS \
    --model hf \
    --model_args pretrained=$MODEL,dtype="bfloat16"

```


## Server

```sh

export MODEL='Meta-Llama-3.1-8B-Instruct'
export PORT=8008

export TASKS='gsm8k,gsm8k_cot_zeroshot,gsm8k_cot_llama'

lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --tasks $TASKS \
    --model openai-chat-completions \
    --model_args model=$MODEL,num_concurrent=16,tokenizer=None,base_url=http://0.0.0.0:$PORT/v1/chat/completions


lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_grpo \
    --system_instruction "Respond in the following format:\n\n<think>\n...\n</think>\n<answer>...</answer>" \
    --model_args model=$MODEL,num_concurrent=16,tokenizer=None,base_url=http://0.0.0.0:$PORT/v1/chat/completions

```