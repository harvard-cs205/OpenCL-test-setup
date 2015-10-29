#!/bin/bash
#
# add all other SBATCH directives here...
#
#SBATCH -p holyseasgpu
#SBATCH --gres=gpu
#SBATCH -n 1 # Number of cores
#SBATCH -N 1 # Ensure that all cores are on one machine
#SBATCH --gres=gpu
#SBATCH --mem=500

# add additional commands needed for Lmod and module loads here

module load python
module load pyopencl

# add commands for analyses here

python test.py

# end of program
exit 0;

