#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J fastqc in trimmed sample
#SBATCH -t 00:15:00 --qos=short
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load FastQC/0.11.9

#commands
cd /proj/genomeanalysis2022/Genome_Analysis/1_Zhang_2017/genomics_data/Illumina
fastqc -o ~/fastqc/ *.fq.gz 


##end file
