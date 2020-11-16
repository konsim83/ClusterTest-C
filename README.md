# ClusterTest-C
Mini test written in C to test MPI and cluster environment

To compile you must have a MPI library available. Type

'''
mpicc hello_mpi_world.c -o hello_mpi_world
'''

If you have SLURM as workload manager you can run the example with
the command (<code>N</code> is number of compute nodes)

'''
srun --nodes=N ./hello_mpi_world
'''

Alternatively you can run a batch job with

'''
sbatch SLURM_hello_mpi_world.sh
'''
after editing the script and adjsuting it to your cluster environment.
