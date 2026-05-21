#!/bin/bash -l

#SBATCH -n 8
#SBATCH --mem=20000M
#SBATCH -t 48:00:00
#SBATCH -J star_run_merged
#SBATCH --mail-type=ALL
#SBATCH --mail-user emma.ostlund@sva.se

# Your commands
bash EimeriaDualRNASeq/scripts/star/star_run.sh results/fastp/IBV/