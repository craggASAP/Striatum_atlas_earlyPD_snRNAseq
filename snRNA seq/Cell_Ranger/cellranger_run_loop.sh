#!/usr/bin/bash
#SBATCH -N 1 -n 1 -c 12
#SBATCH --mem=38000
#SBATCH -t 24:00:00
#SBATCH -J sn-final
#SBATCH --mail-user yuvarani.masarapu@scilifelab.se
#SBATCH --mail-type=ALL
#SBATCH -e job-%J.err
#SBATCH -o job-%J.out


if [ "$#" -ne 1 ]; then
    echo "No filepath given!\n\nUsage: sbatch path/to/cellranger/script/sh path/to/input/csv\n\nReturning with error 1."
	return 1
fi


filepath=$1

echo $filepath
if [[ $filepath != *.csv ]]; then
	echo "Input File does not end as csv!\n Exiting with error 2."
	return 2
fi

looper=1
while IFS="," read -r rec_sample_name
do
  echo "DataSet: $looper\tFor Sample Name: $rec_sample_name"
  echo ""
  looper=$((looper+1))
  # Your command here, note rec_sample_name is assumed to be sample_name
  # And rec_path_to_figure is assumed to be path to figure

	/home/yuvarani.masarapu/softwares/cellranger-7.0.1/cellranger count \
		--id=$rec_sample_name \
		--fastqs=/home/yuvarani.masarapu/parkinsons/sn_data/fastq2 \
		--sample=$rec_sample_name \
		--include-introns true \
		--transcriptome=/home/yuvarani.masarapu/references/refdata-gex-mm10-2020-A

done < <(tail $filepath)
