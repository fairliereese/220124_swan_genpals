#!/bin/bash
#SBATCH --job-name=swan_die
#SBATCH -n 16
#SBATCH -A SEYEDAM_LAB
#SBATCH -o processing/%x.o%A_%a
#SBATCH -e processing/%x.e%A_%a
#SBATCH --partition=standard
#SBATCH --time=7-0
#SBATCH --mail-type=START,END
#SBATCH --mem=64G
#SBATCH --mail-user=freese@uci.edu

# input tab-separated file with test1 \t test2 \t fname
ifile=$1

# extract PBID
i=$SLURM_ARRAY_TASK_ID
test=`head -${i} $ifile | tail -1 | cut -f1`
cond1=`head -${i} $ifile | tail -1 | cut -f2`
cond2=`head -${i} $ifile | tail -1 | cut -f3`
fname=`head -${i} $ifile | tail -1 | cut -f44`

# make directories
odir=~/mortazavi_lab/data/mousewg/lr_bulk/die/
fname=${odir}/${fname}
d=~/mortazavi_lab/data/mousewg/scripts/

python ${d}swan_die.py $test $cond1 $cond2 $fname
