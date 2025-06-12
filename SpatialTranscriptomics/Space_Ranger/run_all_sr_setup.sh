#!/usr/bin/bash
module load spaceranger

SLIDE1=V19T26-018
SLIDE2=V19T26-019
SLIDE3=V19T26-072
SLIDE4=V19T26-073

sbatch run_spaceranger.sh ADI_1_3 $SLIDE1 C1
sbatch run_spaceranger.sh ADI_1_4 $SLIDE1 D1

sbatch run_spaceranger.sh ADI_2_2 $SLIDE2 B1
sbatch run_spaceranger.sh ADI_2_3 $SLIDE2 C1
sbatch run_spaceranger.sh ADI_2_4 $SLIDE2 D1

sbatch run_spaceranger.sh ADI_3_2 $SLIDE3 B1
sbatch run_spaceranger.sh ADI_3_3 $SLIDE3 C1
sbatch run_spaceranger.sh ADI_3_4 $SLIDE3 D1

sbatch run_spaceranger.sh ADI_4_4 $SLIDE4 D1
