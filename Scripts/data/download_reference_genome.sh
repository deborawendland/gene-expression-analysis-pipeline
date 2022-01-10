mkdir Data/reference_genome_hg38
cd Data/reference_genome_hg38
curl --remote-name --remote-time https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/001/405/GCF_000001405.26_GRCh38/GCF_000001405.26_GRCh38_genomic.fna.gz

echo "extractiong hg38 human reference genome"
gzip -d GCF_000001405.26_GRCh38_genomic.fna.gz