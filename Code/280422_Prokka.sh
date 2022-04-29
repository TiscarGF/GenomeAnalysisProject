#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J Prokka
#SBATCH -t 04:00:00  
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load prokka/1.45-5b58020

#commands
cd /home/tiscargf/working_GA/results/Canu_assembly/
prokka *contigs.fasta --addgenes --prefix E_fae_E745 \
 --outdir /home/tiscargf/working_GA/code/prokka_annot \
 --genus Enterococcus --species faecalis --strain E745 --usegenus \
 --protein /home/tiscargf/working_GA/data/Reference_genome/E_faecium_E745.fasta
##end file
