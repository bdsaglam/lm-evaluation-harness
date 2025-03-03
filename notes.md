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
    --model_args model=Meta-Llama-3-8B-Instruct,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions
```

### GSM8K

```
lm_eval \
    --output_path outputs \
    --log_samples \
    --apply_chat_template \
    --model openai-chat-completions \
    --tasks gsm8k_cot_llama \
    --model_args model=Meta-Llama-3-8B-Instruct,num_concurrent=8,tokenizer=None,base_url=http://0.0.0.0:8111/chat/completions
```

./run/gsm8k.sh Qwen2.5-1.5B-Instruct 8002
./run/gsm8k-grpo.sh Qwen2.5-1.5B-Instruct 8002

./run/gsm8k.sh Qwen2.5-1.5B-Instruct-GRPO 8802
./run/gsm8k-grpo.sh Qwen2.5-1.5B-Instruct-GRPO 8802

./run/gsm8k.sh Meta-Llama-3-8B-Instruct 8008
./run/gsm8k-grpo.sh Meta-Llama-3-8B-Instruct 8008

./run/gsm8k.sh Meta-Llama-3-8B-Instruct-GRPO 8808
./run/gsm8k-grpo.sh Meta-Llama-3-8B-Instruct-GRPO 8808

