#include <stdio.h>
#include <mpi.h>

int main(int argc, char *argv[])
{
    int n_mpi_proc;
    int this_mpi_proc;
    int length_machine_name;

    // For the machine name filled by MPI we must have enough chars available
    char machine_name[MPI_MAX_PROCESSOR_NAME];

    // Must be called before execution
    MPI_Init(&argc, &argv);

    // Get the number of processes
    MPI_Comm_size(MPI_COMM_WORLD, &n_mpi_proc);

    // Get the number of this process
    MPI_Comm_rank(MPI_COMM_WORLD, &this_mpi_proc);

    // Get the name of this machine
    MPI_Get_processor_name(machine_name, &length_machine_name);

    printf("Hello MPI world:    n_mpi_proc = %2d   |   this_mpi_proc = %2d   |   machine_name = %s\n", n_mpi_proc, this_mpi_proc, machine_name);

    // Must be called after execution
    MPI_Finalize();

    return 0;
}
