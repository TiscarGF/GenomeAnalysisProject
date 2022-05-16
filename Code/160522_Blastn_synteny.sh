#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH --reservation uppmax2022-2-5_12
#SBATCH -p core
#SBATCH -J blastn
#SBATCH -t 06:00:00  
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load blast

#commands

blastn -query /home/tiscargf/working_GA/results/Prokka_annotation/E_fae_E745.fna -subject /home/tiscargf/working_GA/data/Reference_genome/E_faecium_E745.fasta -outfmt '6' > blast_EfaeciumE745ref_to_annotated_genome.fasta
 
##end file
