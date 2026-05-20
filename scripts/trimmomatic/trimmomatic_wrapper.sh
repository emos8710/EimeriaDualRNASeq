#!/bin/bash

#SBATCH -n 15
#SBATCH -t 24:00:00
#SBATCH -J trimmomatic_run
#SBATCH --mail-type=ALL
#SBATCH --mail-user=emma.ostlund@sva.se

module load Java/17.0.6-hpc1-bdist

# Your commands
bash EimeriaDualRNASeq/scripts/trimmomatic/trimmomatic_run.sh data/*
