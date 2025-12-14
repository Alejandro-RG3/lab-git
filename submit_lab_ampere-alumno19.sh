#!/bin/bash
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno19/lab3/lab-git
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

for file in *.fastq
do
    ./file-cut.sh "$file" &
done

wait
