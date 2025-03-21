export path=outputs/openai_gsm8k_results_deepseek-ai_DeepSeek-R1-Distill-Qwen-1.5B_32768.json
ssh <your_username>@bridges2.psc.edu
interact -p GPU-shared --gres=gpu:h100-80:1 -t 8:00:00
cd /ocean/projects/cis250041p/ybobde
module load AI
conda activate efficient_reasoning
conda list
export HF_HOME=/ocean/projects/cis250041p/ybobde/huggingface_cache

#By default, Hugging Face models are downloaded to a cache in your home directory (usually ~/.cache/huggingface), which is why I was hitting the quota limit.
echo 'export HF_HOME=/ocean/projects/cis250041p/ybobde/huggingface_cache' >> ~/.bashrc
export HF_HOME=/ocean/projects/cis250041p/ybobde/huggingface_cache
mkdir -p /ocean/projects/cis250041p/ybobde/huggingface_cache
