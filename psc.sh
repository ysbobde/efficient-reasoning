ssh <your_username>@bridges2.psc.edu
interact -p GPU-shared --gres=gpu:h100-80:1 -t 1:00:00
cd /ocean/projects/cis250041p/ybobde
my_quotas
conda activate efficient_reasoning
module load AI
conda list
