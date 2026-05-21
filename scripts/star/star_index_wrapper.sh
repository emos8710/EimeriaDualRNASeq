#!/bin/bash -l

#SBATCH -n 8
#SBATCH --mem=40000M
#SBATCH -t 1:00:00
#SBATCH -J star_index_chicken
#SBATCH --mail-type=ALL
#SBATCH --mail-user emma.ostlund@sva.se

# Your commands
bash EimeriaDualRNASeq/scripts/star/star_index.sh reference_genomes/GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b.fna reference_genomes/GCF_016699485.2_bGalGal1.mat.broiler.GRCg7b.gff