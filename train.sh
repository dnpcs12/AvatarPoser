#!/usr/bin/bash

#SBATCH -J test-run
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=8
#SBATCH --mem-per-gpu=29G
#SBATCH -p batch_grad
#SBATCH -t 3-0
#SBATCH -w ariel-v6
#SBATCH -o logs/slurm-%A.out


pwd
python main_train_avatarposer.py -opt options/train_avatarposer.json
exit 0
