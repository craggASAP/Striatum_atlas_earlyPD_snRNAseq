#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -n 10
#SBATCH -J cr_multi_parkinsons
#SBATCH --mail-user yuvarani.masarapu@scilifelab.se
#SBATCH --mail-type=ALL
#SBATCH -e wjob-%J.err
#SBATCH -o wjob-%J.out

/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger multi --id=new_6OHDA_1 \
                    --csv=new_6OHDA_1.csv

/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger multi --id=new_6OHDA_2 \
                    --csv=new_6OHDA_2.csv

/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger multi --id=new_6OHDA_3 \
                    --csv=new_6OHDA_3.csv

/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger multi --id=new_control_1 \
                    --csv=new_control_1.csv

/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger multi --id=new_control_2 \
                    --csv=new_control_2.csv
