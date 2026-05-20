# Short bash script for using fastp with user input for the location of the read files
# Usage: bash fastp_run.sh /Path/to/folder/containing/read/files1 /Path/to/folder/containing/read/files2 ...

for FILE_PATH in "$@"
do
    GROUP_NAME=$(echo ${FILE_PATH} | cut -d '/' -f 2)
    mkdir -p results/fastp/${GROUP_NAME}
    for f in $(ls ${FILE_PATH} | sed 's/_.._001.fastq.gz//' | sort -u)
    do
        software/fastp --thread 15 \
        -i ${FILE_PATH}/${f}_R1_001.fastq.gz \
        -I ${FILE_PATH}/${f}_R2_001.fastq.gz \
        -o results/fastp/${GROUP_NAME}/${f}_R1_paired.fastq.gz \
        --unpaired1 results/fastp/${GROUP_NAME}/${f}_R1_unpaired.fastq.gz \
        -O results/fastp/${GROUP_NAME}/${f}_R2_paired.fastq.gz \
        -h results/fastp/${GROUP_NAME}/${f}_report.html \
        -j results/fastp/${GROUP_NAME}/${f}_report.json \
        --unpaired2 results/fastp/${GROUP_NAME}/${f}_R2_unpaired.fastq.gz \
        --detect_adapter_for_pe \
        --cut_front -M 20 -W 4 \
        --trim_poly_g \
        -l 50
    done
done