#!/bin/bash -l

#SBATCH -n 2
#SBATCH -t 48:00:00
#SBATCH -J htseq_run_IBV
#SBATCH --mail-type=ALL
#SBATCH --mail-user emma.ostlund@sva.se

# Your commands
bash scripts/htseq/htseq_rev_run.sh results/star/mapped_reads/IBV