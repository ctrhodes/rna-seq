# Transcript abundance quantified by cufflinks

This scripts in this repository provide a basic workflow for aligning paired-end RNA-seq reads to a reference genome using "true alignment" methods. We will use the Tuxedo Suite of programs (bowtie, cufflinks, cuffdiff, etc) to quantify transcript abundance.

The cufflinks/cuffdiff methods are quickly becoming outdated for differential gene expression analysis, primarily due to slow speed versus pseudo-aligners. One of the final niche applications for cufflinks is quantification of alternative splicing and novel splice site detection.

While Cufflinks and other "true alignment" methods are quickly falling out of favor compared to psuedo-aligners, cufflinks does produce high quality quantification of transcript abundances which are largely indistinguishable to pseudo-aligners. Moreover, the concepts underlying bowtie, STAR, cufflinks, and other mature software packages is intuitive and easy to understand for novice bioinformaticians. As such, I have included a few scripts to perform transcript assembly and transcript abundance using bowtie and cufflinks. Also, since STAR is considerably faster than bowtie, I have included a script for STAR alignment. Either bowtie or STAR output can be fed into downstream quantification of transcript abundance.
