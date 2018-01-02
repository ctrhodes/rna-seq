#!/bin/bash

IN_DIR="/home/chris/project/rna/s2_aligned"
OUT_DIR="/home/chris/project/rna/s3_clink"

GENOME="hg38.90_withMito.fa"
GENOME_DIR="/genomes/fasta/hg38.90_withMito"
GENOME_GTF="Homo_sapiens.GRCh38.90.gtf"
GENOME_ANNO_DIR="/genomes/annotation/hg38.90_withMito"

#deep RNA sequencing experiments often generate multiple fastq files.
#following alignment, it is often advantageous to run cufflink transript assembly on each file and then merge all
#transcripts (to allow detection of rare alternative splice events), such as with looped command below.
#Alternatively, you can merge all alignments into a single file using samtools prior to calling cufflinks:
#samtools merge tophat_out_merged.bam tophat_out_file1.bam tophat_out_file2.bam

cd $IN_DIR

#select file
for sample in *_hits.bam
do
describer=$(echo ${sample} | sed 's/.bam//')
echo $sample
echo $describer
echo $GENOME

#select analysis
echo startCufflinks $describer

cufflinks -p 4 -o $OUT_DIR/${describer} -G $GENOME_ANNO_DIR/$GENOME_GTF -u -b $GENOME_DIR/$GENOME \
--library-type fr-firststrand $describer.bam

echo endCufflinks $describer

done




