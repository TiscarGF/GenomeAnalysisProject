#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH --reservation uppmax2022-2-5_7
#SBATCH -p core
#SBATCH -J Quast_PacBio_Assembly
#SBATCH -t 00:15:00 --qos=short  
#SBATCH --mail-type=ALL
#SBATCH --mail-user tiscar.graells-fernandez.5727@student.uu.se

#load modules
module load bioinfo-tools
module load quast

#commands
quast.py /home/tiscargf/working_GA/results/Canu_assembly/*contigs.fasta \
 -r /home/tiscargf/working_GA/data/Reference_genome/E_faecium_E745.fasta \
 -o /home/tiscargf/working_GA/results/Quast_AssembledGenome

##end file
