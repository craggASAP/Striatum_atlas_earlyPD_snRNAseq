<div align="center">
    <h2><strong>A molecular atlas of cell types in the mouse and human parkinsonian striatum</strong></h2>
    <img src="snRNA seq/Githhub_image.png" alt="Description of the image" width="600" />
</div>

<p align="justify">Parkinson’s disease (PD) is defined by progressive dopaminergic neuron loss, disrupting the function of dopamine receptor-expressing neurons in the basal ganglia. Beyond this, the transcriptional and spatial changes in diverse striatal cell types during PD progression remain unclear. Our study combines spatial transcriptomics and single-nucleus RNA sequencing in mild and progressive PD mouse models and human postmortem tissue to map the cell-type-specific effects of dopamine degeneration. We found that both neurons and glial cells exhibit significant transcriptomic changes, with glial cells showing early and prominent effects. In mice, oligodendrocytes are the most affected glial population, whereas astrocytes display the greatest alterations in human tissue. A distinct subtype of striatal projection neurons, eccentric SPNs (eSPNs), along with Chst9+ direct-pathway spiny projection neurons (dSPNs), exhibit notable resilience to dopamine loss in mouse models and during early Braak pathology in human patients. Interestingly, while Chst9+ dSPNs maintain resilience across all Braak stages and mouse models, eSPNs show increased vulnerability as Braak stages progress and as dopamine depletion advances in the dopamine-specific mitochondrial deficiency model (MitoPark mice). This study highlights the dynamic shifts in cell states within the parkinsonian striatum, offering valuable insights into disease progression and neuronal resilience.This resource establishes the dynamic landscape of cell states in the parkinsonian striatum.</p>

------------------
## Contents
* [Project Overview](#project-overview)
* [System Requirements](#system-requirements)
* [Hardware Requirements](#hardware-requirements)
* [Folder Structure](#folder-structure)
* [Data Availability](#data-availabilty)
* [License and citation](#license-and-citation)
* [Acknowledgements](#acknowledgements)

------------------
## Project Overview

This repository contains scripts used to (1) analyze and plot single-nucleus RNA sequencing (snRNA-seq) data for cell-specific transcriptomic changes in the striatum from Parkinson's Disease (PD) mouse models and human tissue; (2) analyze and plot spatial transcriptomics (ST) data to map regional vulnerabilities within the striatum, (3) perform differential expression and pseudotime trajectory analyses for specific cell types, particularly focusing on astrocytes, oligodendrocytes, and spiny projection neurons (SPNs); and (4) apply computational models for trajectory inference and pseudotime analyse. These scripts were custom-written by Marta Graziano from [Meletis Lab](https://ki.se/en/research/research-areas-centres-and-networks/research-groups/konstantinos-meletis-group#tab-research-focus) and Yuvarani Masarapu from [Giacomello Lab](https://www.spatialresearch.org/research-giacomello-lab/) and used in the study "A molecular atlas of cell types in the mouse and human parkinsonian striatum."

------------------
## System Requirements

The code in this repository is designed to run on systems capable of supporting:

- R (version 4.1.3 or later)
- Python (version 3.8 or later)
- Seurat (version 4.0.1 or later) for downstream data analysis.
- Required R Packages: libraries in the file library.R in the folder **snRNA seq/**

------------------
## Hardware Requirements

The computational requirements to run the analyses are well within the capacity of modern mid-range laptops or desktops, with the following minimum specifications:

- 32 GB of RAM
- 4-core processor, 2.5+ GHz
- Storage: At least 50 GB free disk space for temporary files and intermediate results.

------------------
## Folder Structure

The repository is organized as follows:

- Folder **snRNA_seq/** contains scripts for <i>analyzing single-nucleus RNA sequencing data</i>:
    - **cellXgene/gene_matrix_creation_for_mapmycell.ipynb**, **cellXgene/Dataset_fix_for_cellxgene_mouse.R** and **cellXgene/Dataset_fix_for_cellxgene_human.R**: Python and R scripts used to format and convert the data for [CellXGene](https://cellxgene.cziscience.com/) resource.
    - **gene_matrix_creation_for_mapmycell.ipynb**: Python script used to convert the expression matrix extracted from the seurat object to map the cells to Allen tool [MapMyCells](https://portal.brain-map.org/atlases-and-data/bkp/mapmycells).
    - **Mouse datasets**: Scripts to analize and generate figures using mouse full datasets (subfolder **Analysis_full_dataset**) shown in Figure 1 and 2, and mouse subclustering datasets (subfolder**Sub_clustering_SPNs_mouse**) shown in Figure 3.
    - **Human datasets**: Scripts to analize and generate figures for human full datasets (subfolder **Analysis_full_dataset**) shown in Figure 1 and 5, and human subclustering datasets (subfolder **Sub_clustering_SPNs_human**) shown in Figure 6.
    - **cellranger_run_loop.sh**, **run_cr_230619.sh**, **run_cr_count_2023-06-26.sh** within subfolder **CellRanger_Processing_Scripts**: Scripts written by Yuvarani Masarapu from Giacomello Lab to generate gene count matrices using Cell Ranger software (also available [here](https://github.com/giacomellolab/EarlyParkinsons_Striatum_Atlas/tree/e93711259786f1619879188beb27a51a13d047cb/snRNAseq/Processing_Scripts)).
 
- The sequenced libraries from the Visium experiments were processed using the 10x Genomics Spaceranger pipeline (10x Genomics Space Ranger v1.3.1) to generate the gene count matrices for the downstream data analysis. 
 
- Folder **SpatialTranscriptomics** contains scripts ritten by Yuvarani Masarapu from Giacomello Lab (also available [here](https://github.com/giacomellolab/EarlyParkinsons_Striatum_Atlas/tree/main/SpatialTranscriptomics)) to <i> generate gene count matrices </i> using Space Ranger software (subfolder **SpaceRanges_Processing_Scripts**) and <i> analize and generate figures </i> (sub-folder **Analysis** and **Plots**) using spatial transcriptomics datasets.

- Folder **Trajectory_Inference/** contains R scripts for <i> pseudotime and trajectory analyses </i> for human and mouse datasets.
 
------------------
## Data Availability

The raw mouse sequencing data (ST and snRNA-seq) generated for this manuscript will be available on the [ASAP CRN Cloud](https://cloud.parkinsonsroadmap.org/collections) repository. The same repository already hosts the raw data for the human postmortem dataset (accessible [here](https://cloud.parkinsonsroadmap.org/collections/jakobsson-20/overview)). Processed matrices and analyzed datasets for snRNA seq will be available on the CellXGene platform upon publication. 

------------------
## License and Citation

If you use this code in your research, please cite the following:

A molecular atlas of cell types in the mouse and human parkinsonian striatum. (2025). Authors: Marta Graziano, Ioannis Mantas, Yuvarani Masarapu, Solène Frapard, Raquel
Garza, (..), Johan Jakobsson, Stefania Giacomello and Konstantinos Meletis

This repository is released under the [MIT License](https://opensource.org/license/mit) - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

This research was funded in whole by Aligning Science Across Parkinson’s **[ASAP-020370]** through the Michael J. Fox Foundation for Parkinson’s Research (MJFF).
