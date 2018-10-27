#PBS -N sample
#PBS -l nodes=2
#PBS -q bulk-b
#PBS -j oe
#PBS -M ozawa_m@eps.s.u-tokyo.ac.jp
#PBS -me
#PBS -r n

cd $PBS_O_WORKDIR

#export OMP_NUM_THREADS=4
#export OMP_STACKSIZE=512M
aprun -n 8 -N 4  -d ${OMP_NUM_THREADS}  ./nbody.out -N 1000
