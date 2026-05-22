#!/bin/bash -l

#SBATCH -n 10
#SBATCH -t 48:00:00
#SBATCH -J htseq_run_Ascaridia
#SBATCH --mail-type=ALL
#SBATCH --mail-user emma.ostlund@sva.se

# Your commands
bash EimeriaDualRNASeq/scripts/htseq/htseq_rev_run.sh results/star/mapped_reads/Ascaridia