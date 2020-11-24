#!/bin/bash
#SBATCH --job-name=job_hello-mpi-world
#SBATCH --output=job-hello_mpi_world-%j.out
#SBATCH --error=job-hello_mpi_world-%j.err

#SBATCH --partition=pi4-cluster-all
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4

# Enter submission  directory
cd $SLURM_SUBMIT_DIR

# Print the node that starts the process
echo "Master node: $(hostname)"

mpirun  hello_mpi_world
