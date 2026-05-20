#!/bin/bash

#SBATCH -n 15
#SBATCH -t 12:00:00
#SBATCH -J fastp_run
#SBATCH --mail-type=ALL
#SBATCH --mail-user=emma.ostlund@sva.se

# Your commands
bash EimeriaDualRNASeq/scripts/fastp/fastp_run.sh data/*
