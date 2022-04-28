#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J fastqc_Trimmed_Sample
#SBATCH -t 00:15:00 --qos=short
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load FastQC/0.11.9

#commands
cd /home/tiscargf/working_GA/results/01_preprocessing/190422_Trimmomatic/
fastqc *fq.gz -o /home/tiscargf/working_GA/results/01_preprocessing/210422_trimmedFastQC


##end file
