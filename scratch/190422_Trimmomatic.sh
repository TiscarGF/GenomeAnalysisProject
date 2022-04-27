#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J trimmomatic
#SBATCH -t 03:00:00 
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load trimmomatic/0.36 

#commands
fwd = "/proj/genomeanalysis2022/Genome_Analysis/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz"
rev = "/proj/genomeanalysis2022/Genome_Analysis/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz"
output_dir = "../Results/01_preprocessing/E745-1.L500_SZAXPI015146-56"

#Generic Trimmomatic command:
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE $fwd $rev $output_dir.trimmed_1_paired.fq.gz \
$output_dir._trimmed_1_unpaired.fq.gz $output_dir.trimmed_2_paired.fq.gz $output_dir.trimmed_2_unpaired.fq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36

## end file
