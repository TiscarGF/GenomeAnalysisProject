#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J HtSeq_1
#SBATCH -t 06:00:00  
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load samtools/1.14
module load bwa/0.7.17
module load htseq/0.12.4

#commands
samtools index MappingRNA_BH_1_sort.bam

python -m HTSeq.scripts.count -f bam -r pos -t CDS -i ID \
MappingRNA_BH_1_sort.bam \
E_fae_E745.gff > Counts_BH_1.txt
 
##end file
