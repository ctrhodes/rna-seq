# rna-seq
workflows for bulk rna-seq

RNA-Seq wrkflows typically include an experimental (or "wet lab") step to generate samples and biological replicates for use in preparing sequencing libraries. The wet lab work is then followed by "dry lab" work including qc, alignement, transript assembly, etc and making biological insights using systems biology approaches.

The general workflow for bulk RNA-Seq is below, adapted from here

![Alt text](https://github.com/ctrhodes/rna-seq/blob/master/overview%20of%20bulk%20rna-seq%20workflow.jpg?raw=true)

This scripts in this repository provide a basic workflow for aligning paired-end RNA-seq reads to a reference genome and assembling a transcriptome.

The scripts also require the following software be installed an in your path:

Bowtie aligner http://bowtie-bio.sourceforge.net/index.shtml

Cufflinks http://cole-trapnell-lab.github.io/cufflinks/manual/
