#!/bin/bash
#SBATCH -t 24:00:00
#SBATCH -n 10
#SBATCH -J cr_cnt_parkinsons
#SBATCH --mail-user yuvarani.masarapu@scilifelab.se
#SBATCH --mail-type=ALL
#SBATCH -e wjob-%J.err
#SBATCH -o wjob-%J.out

/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger count --id=new_6OHDA_1 \
                    --transcriptome=/home/yuvarani.masarapu/references/refdata-gex-mm10-2020-A \
                    --fastqs=/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230516,/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230614 \
                    --sample=new_6OHDA_1 \
                    --include-introns true

/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger count --id=new_6OHDA_2 \
                    --transcriptome=/home/yuvarani.masarapu/references/refdata-gex-mm10-2020-A \
                    --fastqs=/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230516,/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230614 \
                    --sample=new_6OHDA_2 \
                    --include-introns true


/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger count --id=new_6OHDA_3 \
                    --transcriptome=/home/yuvarani.masarapu/references/refdata-gex-mm10-2020-A \
                    --fastqs=/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230516,/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230614 \
                    --sample=new_6OHDA_3 \
                    --include-introns true


/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger count --id=new_control_1 \
                    --transcriptome=/home/yuvarani.masarapu/references/refdata-gex-mm10-2020-A \
                    --fastqs=/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230516 \
                    --sample=new_control_1 \
                    --include-introns true


/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger count --id=new_control_2 \
                    --transcriptome=/home/yuvarani.masarapu/references/refdata-gex-mm10-2020-A \
                    --fastqs=/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230516,/home/yuvarani.masarapu/parkinsons/sn_data/sndata_new_2023-06-19/fastq/fastq_230614 \
                    --sample=new_control_2 \
                    --include-introns true

