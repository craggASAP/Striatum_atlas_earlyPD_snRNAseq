#!/usr/bin/bash
#SBATCH -N 1 -n 1 -c 8
#SBATCH --mem=38000
#SBATCH -t 12:00:00

spaceranger count --id=ADI_1_2 \
	--fastqs=/home/lovisa.franzen/data/adipose/191220_visium/raw \
	--transcriptome=/fastdisk/10x/refdata-cellranger-GRCh38-3.0.0/ \
	--sample=Sample_ADI_1_2 \
	--image=/home/lovisa.franzen/data/adipose/191220_visium/images/V19T26-018_B1_NK49-after.jpg \
	--slide=V19T26-018 \
	--area=B1

