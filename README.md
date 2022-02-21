Este repositório é parte integrante do Trabalho de Conclusão de Curso do Curso de Informática Biomédica - UFCSPA. <br>

## **Título: Desenvolvimento de *pipeline* automatizado para análise de dados transcricionais e de interação gênica em amostras de pacientes com infecção por SARS-CoV-2**<br>
 
**Aluna**: Débora Daniela Wendland Amorim<br>
**Orientadora**: Profa. Dra. Claudia Elizabeth Thompson<br>
**Coorientadora**: Dra. Patrícia Aline Gröhs Ferrareze<br>
___

### Programas implementados no pipeline: 
- FastQC
- Seqtk
- Trimmomatic
- Bowtie2
- TopHat2
- Samtools
- FeatureCounts
- DESeq2

## Para instalar: 
Acesse a pasta referente ao pipeline:
`cd gene-expression-analysis-pipeline`

Rode o comando:
`sudo sh ./local_install_all`

# Para rodar o pipeline: 
Acesse a pasta referente ao pipeline:
`cd gene-expression-analysis-pipeline`

Edite o arquivo `./data.config` com as informações correspondentes. 
Adicione em `./Data/samples` os arquivos .fastq para a análise.
Adicione em `./Data/samples` o arquivo metadata.csv para a análise.
Adicione em `./Data/adapters` o arquivo com os adaptadores correspondentes para o processo de trimming.

Rode o comando:
`sudo sh ./local_run_analysis`
