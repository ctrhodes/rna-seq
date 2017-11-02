#!/bin/bash

IN_DIR = "/home/chris/project/rna/s1_fastq"
OUT_DIR = "/home/chris/project/rna/s2_aligned"
GENOME_ANNOTATION_DIR = "/genomes/annotation/hg38_withMito"
GENOME_GENE_GTF = "Homo_sapiens.GRCh38.90.gtf"

MATE_INNER = 83

cd $IN_DIR

#RNA typically uses paired reads such as the following examples in our $IN_DIR:
#ls $IN_DIR
#outputof 2 paired-end RNA-seq sets:
#FlowCell1_L003_R1.fastq
#FlowCell1_L003_R2.fastq
#FlowCell2_L007_R1.fastq
#FlowCell2_L007_R2.fastq


#This experiment is for genmoe-wide ChIP pulldowns targeting histone modifications
#As mitochondria do not have histones, remove mito DNA sequences from ChIP-Seq reference genome
genome="hg38_withMito"


#select file
for sample in *_R1.fastq
do
describer=$(echo ${sample} | sed 's/.fastq//')
echo $sample
echo $describer
echo $genome

#select analysis
echo $describer endTophat

#if only running non-paired RNA-Seq delete: "${describer}_R2.fastq" belox
tophat2 -p 4 -o $OUT_DIR/${describer} -G $GENOME_ANNOTATION_DIR/$GENOME_GENE_GTF -r $MATE_INNER --library-type fr-firststrand \
--bowtie1 /home/bowtie-1.1.1/indexes/GRCh38_90 ${describer}_R1.fastq ${describer}_R2.fastq

echo $describer endTophat

done

