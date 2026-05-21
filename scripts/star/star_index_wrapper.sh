#!/bin/bash -l

#SBATCH -n 8
#SBATCH -t 1:00:00
#SBATCH -J star_index_merged
#SBATCH --mail-type=ALL
#SBATCH --mail-user emma.ostlund@sva.se

# Your commands
bash EimeriaDualRNASeq/scripts/star/star_index.sh reference_genomes/GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b_IBV-M41.fna reference_genomes/GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b_IBV-M41.gff