#!/bin/sh
#
# Simple "Hello World" submit script for Slurm.
#
# Replace <ACCOUNT> with your account name before submitting.
#
#SBATCH --account=ocp            # The account name for the job.
#SBATCH --job-name=MOC    # The job name.
#SBATCH -N 4                     # The number of nodes to use
                                 #(note there are 24 cores per node)
#SBATCH --exclusive                                 
#SBATCH --time=48:00:00              # The time the job will take to run.

mpirun -n 96 ./mitgcmuv

# End of script
