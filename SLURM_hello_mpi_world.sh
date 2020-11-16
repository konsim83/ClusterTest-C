#!/bin/bash
#SBATCH --job-name=job_hello-mpi-world_myMPI
#SBATCH --output=job_hello-mpi-world_myMPI.out
#SBATCH --error=job_hello-mpi-world_myMPI.err

#SBATCH --partition=uni-all
#SBATCH --nodes=10
#SBATCH --ntasks-per-node=12

#SBATCH --mail-user=konrad.simon@uni-hamburg.de
#SBATCH --mail-type=ALL

# init dealii
source /scratch/cen/numgeo/init_spack.sh
spack load openmpi@3.1.6%gcc@8.1.0 arch=linux-debian8-x86_64

# below your job commands :
#cd /scratch/cen/numgeo/Code_Konrad/cluster_test/
#FILE=/scratch/cen/numgeo/Code_Konrad/cluster_test/hello-mpi-world
#if test -f "$FILE"; then
#    echo "$FILE exists. Removing and recompiling..."
#    rm hello-mpi-world
#fi
#which mpicc
#mpicc -v hello-mpi-world.c -o hello-mpi-world
#echo "Testprogram recompiled."

mpirun  /scratch/cen/numgeo/Code_Konrad/cluster_test/hello-mpi-world
