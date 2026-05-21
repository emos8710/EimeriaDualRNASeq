#!/bin/bash -l

#SBATCH -n 18
#SBATCH -t 12:00:00
#SBATCH -J fastqc_run
#SBATCH --mail-type=ALL
#SBATCH --mail-user emma.ostlund@sva.se

module load Java/17.0.6-hpc1-bdist

# Your commands
software/FastQC/fastqc -t 18 -o results/fastqc_fastp/ results/fastp/*/*.gz
