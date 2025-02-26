## Setup

```
pip install -e .[api]
```

## Usage


### GPQA

```
lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gpqa_diamond_cot_zeroshot \
    --model_args model=llama-3-8b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions
```

Variants:

--tasks gpqa_main_cot_zeroshot,gpqa_diamond_cot_zeroshot \
--tasks gpqa_diamond_cot_n_shot --num_fewshot 1 \

--model_args model=llama-3-8b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions
--model_args model=qwen-2.5-1.5b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8002/v1/chat/completions

### GSM8K

```
lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_cot_llama \
    --model_args model=llama-3-8b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions
```

Variants:

--tasks gsm8k_cot_zeroshot,gsm8k_cot_llama \

--model_args model=llama-3-8b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions
--model_args model=qwen-2.5-1.5b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8002/v1/chat/completions
--model_args model=qwen-2.5-1.5b-grpo,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8802/v1/chat/completions

lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_cot_zeroshot \
    --model_args model=llama-3-8b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions
