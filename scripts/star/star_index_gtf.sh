# Script for producing an index for STAR
# Usage:  bash star_index.sh /Path/to/reference/genome.fna /Path/to/reference/genome.gff

mkdir -p results/star/index_chicken

software/STAR/source/STAR --runMode genomeGenerate --genomeDir results/star/index_chicken --genomeFastaFiles ${1} \
	--runThreadN 8 --sjdbGTFfile ${2} --sjdbOverhang 150 --genomeChrBinNbits 18 \
	--genomeSAindexNbases 13

	#--genomeSAindexNbases 13 set on recommentation from STAR