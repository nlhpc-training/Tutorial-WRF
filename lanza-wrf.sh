#!/bin/bash
#---------------Script SBATCH - NLHPC ----------------
#SBATCH -J TestJob_wrf
#SBATCH -p slims
#SBATCH -n 20
#SBATCH --ntasks-per-node=20
#SBATCH -c 1
#SBATCH --mem-per-cpu=2300
#SBATCH --mail-user=usuario@nlhpc.cl
#SBATCH --mail-type=ALL
#SBATCH -o asd_%j.out
#SBATCH -e asd_%j.err

#-----------------Toolchain---------------------------
ml purge
ml intel/2019b
# ----------------Modulos----------------------------
ml  WPS/4.2-dmpar   WRF/4.1.3-dmpar  
# ----------------Comando--------------------------
cd ~/TEST_WRF/WRF-4.1.3/run/
time mpiexec wrf.exe
