export path=outputs/openai_gsm8k_results_deepseek-ai_DeepSeek-R1-Distill-Qwen-1.5B_32768.json
# path=outputs/test.json

python evaluate_response.py \
    --model_path=deepseek-ai/DeepSeek-R1-Distill-Qwen-1.5B \
    --response_path=$path \
    --task verify \
    --prompt_name=verifier1
    
# for Qwen-2.5-Math as verifier
python evaluate_response.py \
  --response_path=$path \
  --model_path=Qwen/Qwen2.5-Math-1.5B-Instruct \
  --task verify \
  --tokenizer=Qwen/Qwen2.5-Math-1.5B-Instruct 
export path=outputs/openai_gsm8k_results_deepseek-ai_DeepSeek-R1-Distill-Qwen-1.5B_32768.json

python evaluate_response.py \
  --response_path=$path \
  --model_path=Qwen/Qwen2.5-Math-1.5B-Instruct \
  --task verify \
  --tokenizer=Qwen/Qwen2.5-Math-1.5B-Instruct \
  --prompt_name=verifier1