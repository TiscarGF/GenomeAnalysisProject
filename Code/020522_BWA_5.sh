#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J BWA_pair_serum_70
#SBATCH -t 06:00:00  
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load samtools/1.14
module load bwa

#commands
bwa index /home/tiscargf/working_GA/results/Canu_assembly/*contigs.fasta 
bwa mem -t 2 /home/tiscargf/working_GA/results/Canu_assembly/*contigs.fasta \
/proj/genomeanalysis2022/Genome_Analysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_1.fastq.gz \
/proj/genomeanalysis2022/Genome_Analysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_2.fastq.gz\
 | samtools sort  -o MappingRNA_Serum_2_sort.bam 

##end file
