#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J CANU
#SBATCH -t 12:00:00 
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load canu/2.0

#commands
canu \
 -p assCanu_Efae \
 -d Canu_assembly \
  genomeSize=2.77m \
  useGrid=false \
  corThreads=2 \
  maxMemory=10g \
 -pacbio /proj/genomeanalysis2022/Genome_Analysis/1_Zhang_2017/genomics_data/PacBio/*fastq.gz

##end file
