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
cp -r /proj/genomeanalysis2022/Genome_Analysis/1_Zhang_2017/genomics_data/Illumina/*.fq.gz $SNIC_TMP
cd $SNIC_TMP
ls

#Generic Trimmomatic command:
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE E745-1.L500_SZAXPI015146-56_1_clean.fq.gz \
E745-1.L500_SZAXPI015146-56_2_clean.fq.gz \
E_faecium745_trimmed_1_paired.fq.gz \
E_faecium745__trimmed_1_unpaired.fq.gz \
E_faecium745_trimmed_2_paired.fq.gz \
E_faecium745_.trimmed_2_unpaired.fq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36

scp *paired.fq.gz $HOME/GenomeAnalysis/GenomeAnalysisProject/Results

## end file
