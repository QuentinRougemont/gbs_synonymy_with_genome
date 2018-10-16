#!/bin/bash
#SBATCH -J "wgstest"
#SBATCH -o log_%j
#SBATCH -c 10
##SBATCH -p low-suspend
#SBATCH -p ibismax
#SBATCH -A ibismax
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=YOUREMAIL
#SBATCH --time=20-00:00
#SBATCH --mem=24G

# Move to directory where job was submitted
cd $SLURM_SUBMIT_DIR

###########################################################
#Script to run provean in parralel 
#the output from the previous step are stored in a separate
#folder for each chromosome
#I give the name of the chromosome to all 
#my folder and used them as input
############################################################
# External args
CHR=$1
if [ -z "$CHR" ]
then
	echo "error ! Need chromosome folder"
    echo "this shoud be the name of a folder corresponding to the given chromosome"
	echo exit
fi

# Global variables
input="$CHR"

# Launching provean in parallel
find 06_provean/"$input" | grep "\.fasta$" | parallel ./01_scripts/08.a_run_provean_iteration.sh {}
