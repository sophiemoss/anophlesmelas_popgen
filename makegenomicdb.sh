## download additional samples from ncbi using fasterq-dump
conda activate fasterq-dump
fasterq-dump SRR000001

## to make a genomics database of sample VCFs, use the following
ls *.g.vcf.gz | sed 's/.g.vcf.gz//' > fastq2vcfsamples.txt

/mnt/storage11/sophie/fastq2matrix/scripts/merge_vcfs.py import --sample-file fastq2vcfsamples.txt --ref genomic.fasta --prefix gambiae_bijagos_2022 --vcf-dir .

## now merge VCF files

merge_vcfs.py genotype --ref genomic.fasta --prefix gambiae_bijagos_2022 > mergevcf_log.txt 2>&1

# resulting vcf is called gambiae_bijagos_2022.2023_07_25.genotyped.vcf.gz