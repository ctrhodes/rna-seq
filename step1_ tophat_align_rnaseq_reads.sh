#!/bin/bash

IN_DIR="/home/chris/project/rna/s1_fastq"
OUT_DIR="/home/chris/project/rna/s2_aligned"

GENOME_INDEX="hg38.90_withMito"
INDEX_DIR="/home/bowtie-1.1.1/indexes"
GENOME_GTF="Homo_sapiens.GRCh38.90.gtf"
GENOME_ANNO_DIR="/genomes/annotation/hg38.90_withMito"

MATE_INNER = 83

cd $IN_DIR

#RNA-Seq otfen uses paired reads such as the following examples in our $IN_DIR:
#ls $IN_DIR:
#FlowCell1_L003_R1.fastq
#FlowCell1_L003_R2.fastq
#FlowCell2_L007_R1.fastq
#FlowCell2_L007_R2.fastq


#select file
for sample in *_R1.fastq
do
describer=$(echo ${sample} | sed 's/_R..fastq//')
echo $sample
echo $describer
echo $GENOME_INDEX

#select analysis
echo $describer endTophat

#if only running non-paired RNA-Seq delete: "${describer}_R2.fastq" belox
tophat2 -p 4 -o $OUT_DIR/${describer} -G $GENOME_ANNO_DIR/$GENOME_GTF -r $MATE_INNER --library-type fr-firststrand \
--bowtie1 $INDEX_DIR/$GENOME_INDEX ${describer}_R1.fastq ${describer}_R2.fastq

echo $describer endTophat

done

