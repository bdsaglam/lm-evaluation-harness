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

--model_args model=llama-3-8b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions

#### Qwen-2.5-1.5b

lm_eval \
    --limit 32 \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k,gsm8k_cot_zeroshot,gsm8k_cot_llama,gsm8k_cot_org \
    --model_args model=qwen-2.5-1.5b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8002/v1/chat/completions

lm_eval \
    --limit 32 \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_grpo \
    --system_instruction "Respond in the following format:\n\n<reasoning>\n...\n</reasoning>\n<answer>\n...\n</answer>" \
    --model_args model=qwen-2.5-1.5b,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8002/v1/chat/completions

#### Qwen-2.5-1.5b-grpo

lm_eval \
    --limit 32 \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k,gsm8k_cot_zeroshot,gsm8k_cot_llama,gsm8k_cot_org \
    --model_args model=qwen-2.5-1.5b-grpo,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8802/v1/chat/completions

lm_eval \
    --limit 32 \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_grpo \
    --system_instruction "Respond in the following format:\n\n<reasoning>\n...\n</reasoning>\n<answer>\n...\n</answer>" \
    --model_args model=qwen-2.5-1.5b-grpo,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8802/v1/chat/completions

#### Meta-Llama-3-8B-Instruct

lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k,gsm8k_cot_zeroshot,gsm8k_cot_llama,gsm8k_cot_org \
    --model_args model=Meta-Llama-3-8B-Instruct,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8008/v1/chat/completions

lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_grpo \
    --system_instruction "Respond in the following format:\n\n<think>\n...\n</think>\n<answer>...</answer>" \
    --model_args model=Meta-Llama-3-8B-Instruct,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8008/v1/chat/completions

#### Meta-Llama-3-8B-Instruct-GRPO

lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k,gsm8k_cot_zeroshot,gsm8k_cot_llama,gsm8k_cot_org \
    --model_args model=Meta-Llama-3-8B-Instruct-GRPO,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8808/v1/chat/completions

lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_grpo \
    --system_instruction "Respond in the following format:\n\n<think>\n...\n</think>\n<answer>...</answer>" \
    --model_args model=Meta-Llama-3-8B-Instruct-GRPO,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8808/v1/chat/completions
