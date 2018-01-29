# rna-seq
workflows for bulk rna-seq

RNA-Seq is a process to quantify and classify genome-wide transcription levels of genes. There are countless RNA-Seq derived applicaitons. However, one of the most common uses for RNA-Seq involves quantitatively comparing gene expression from cells exposed to 2 different conditions (drug treatments, samples from different indiviuals, etc), also known as differential gene expression analysis (DGEA). RNA-Seq can also be used in an exploratory manner, for example to catalog previously unknown non-coding RNAs, assessing alternative splicing and post-transcriptional modifications, or measure [transcription rates by nacent RNA sequencing](http://www.cell.com/molecular-cell/fulltext/S1097-2765(04)00337-5?_returnURL=http%3A%2F%2Flinkinghub.elsevier.com%2Fretrieve%2Fpii%2FS1097276504003375%3Fshowall%3Dtrue) and [protein translational](http://www.cell.com/cell-systems/fulltext/S2405-4712(17)30549-5).

RNA-Seq wrkflows typically include an experimental (or "wet lab") step to generate samples and biological replicates for use in preparing sequencing libraries. The wet lab work is then followed by "dry lab" work including qc, alignement, transript assembly, etc and making biological insights using systems biology approaches. I will focus on the computational biology portion of the workflow, as this seems to be an area that is often overlooked in bioinformatics tutorials and is therefore more difficult for beginners to master.

The general workflow for bulk RNA-Seq is below, adapted from [Han et al.](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4648566/)

![Alt text](https://github.com/ctrhodes/rna-seq/blob/master/overview%20of%20bulk%20rna-seq%20workflow.jpg?raw=true)

Historically, RNA-seq can be grouped into 3 approaches based on when the were developed: First came 1. gene-level counts, then 2. transcript abundance by true aligners, and later 3. transcript abundance by pseudo-aligners. Emerging theoretical and practical evidence strongly supports quantifying transcript abundance by pseudo-alignment over gene-level counting.

Excellent tutorials for gene level counting for RNA-seq data have been covered [here](https://www.bioconductor.org/help/workflows/rnaseqGene/) and [here](https://www.bioconductor.org/help/workflows/RnaSeqGeneEdgeRQL/) and will not be covered further.

I will cover the computational biology steps of our RNA-Seq workflow using both true alignment methods and pseudo-alignment methods. Scripts for each method are stored seperately. We will cover transcript abundance by true alignment using the Tuxedo Suite (i.e. Bowtie, Cufflinks, Cuffdiff, etc) and pseudo-alignment using kallisto-sleuth. While I prefer kallisto-sleuth, at time of writing this, the 3 most populat pseudo-aligners (kallisto, salmon, and the revised sailfish) perform about the same. Use which ever best fits your analysis workflows.
