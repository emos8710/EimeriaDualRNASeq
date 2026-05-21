# Script for running FastQC on a set of Trimmomatic trimmed read files and outputting both FastQC and MultiQC reports for them
# Usage: bash fastqc_run.sh /Path/to/folder/containing/trimmed/read/files1 /Path/to/folder/containing/trimmed/read/files2 ...


software/FastQC/fastqc -t 18 -o results/fastqc/ "$@"
