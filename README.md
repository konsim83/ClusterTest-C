# ClusterTest-C

Mini test written in C to test MPI and cluster environment

To compile you must have a MPI library available. Type

<code>
mpicc hello_mpi_world.c -o hello_mpi_world
</code>

If you have SLURM as workload manager you can run the example with
the command (<code>N</code> is number of compute nodes)

<code>
srun --nodes=N ./hello_mpi_world
</code>

Alternatively you can run a batch job with

<code>
sbatch SLURM_hello_mpi_world.sh
</code>
after editing the script and adjsuting it to your cluster environment.
