# rna-seq
workflow for bulk rna-seq

This scripts in this repository complete a basic workflow for aligning RNA-seq reads to a reference geneme and assembling a transcriptome.

The basic steps are below (chip-seq steps are in a seperate repository:

![Alt text](https://github.com/ctrhodes/chip-seq/blob/master/workflows.png?raw=true)

The scripts assume each chip file has a control or "input" file for macs comparison to treatment groups.

Some of the commands, such as in the "macs callpeaks" script are written for broad peaks, such as those seen in H3K27me3 patterns in gene bodies. Adjust these commands as needed.

The scripts also require the following software be installed an in your path:

Bowtie aligner http://bowtie-bio.sourceforge.net/index.shtml

Cufflinks http://cole-trapnell-lab.github.io/cufflinks/manual/
