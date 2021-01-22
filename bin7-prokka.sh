#!/bin/bash -l
#
#SBATCH --job-name=bin7-prokka.sh
#SBATCH -t 4:00:00
#SBATCH --mem=57344
#SBATCH -o /home/jemizzi/rotation-project/scripts/error-output-reports/bin7-prokka.sh.out
#SBATCH -e /home/jemizzi/rotation-project/scripts/error-output-reports/bin7-prokka.sh.err
#SBATCH --mail-user=jemizzi@ucdavis.edu
#SBATCH --mail-type=ALL

module load bio

prokka --outdir /home/jemizzi/rotation-project/annotations/prokka/bin7 --prefix prokka /home/jemizzi/rotation-project/visualization-anvio/combined/SUMMARY_CONCOCT/bin_by_bin/Bin_7/Bin_7-contigs.fa
