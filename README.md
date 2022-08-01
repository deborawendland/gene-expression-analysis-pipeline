Este repositório é parte integrante do Trabalho de Conclusão de Curso do Curso de Informática Biomédica - UFCSPA. <br>

## **Título: Desenvolvimento de *pipeline* automatizado para análise de dados transcricionais e de interação gênica em amostras de pacientes com infecção por SARS-CoV-2**<br>
 
**Aluna**: Débora Daniela Wendland Amorim<br>
**Orientadora**: Profa. Dra. Claudia Elizabeth Thompson<br>
**Coorientadora**: Dra. Patrícia Aline Gröhs Ferrareze<br>
___
SARS-CoV-2 is a 𝛽-coronavirus associated with the lower respiratory tract. It is responsible for the ongoing COVID-19 pandemic, with more than 549 million cases worldwide. There is no sufficient data about the relationships established between SARS-CoV-2 and the host organism during the infectious process, increasing the difficulty to the development of effective treatments for infected patients. In order to clarify the pathogen-host interaction mechanisms, the analysis of differential gene expression in a given tissue through its transcriptome is needed. The comprehension of the transcriptome is essential to provide evidence of the host immune response dynamics and the regulatory gene networks. To facilitate the research about this topic, an automated transcriptomic analysis pipeline was developed using samples of SARS-CoV-2 infected patients as input. The pipeline includes the following steps: pre-processing, alignment and assembly of sequencing reads, quantification of transcript abundance, differential expression modeling, and visualization of the most differentially expressed genes through heatmaps. 
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
Acesse a pasta referente ao pipeline:<br>
`cd gene-expression-analysis-pipeline`<br>

Edite os arquivos `./local_install_all` com a informação sobre PIPELINE_ABSOLUTE_PATH. <br>
Edite os arquivos `./local_run_analysis` com as informações sobre N_THREADS e TOPHAT_LIBRARY_TYPE. <br>

Rode o comando:<br>
`sudo sh ./local_install_all`

# Para rodar o pipeline: 
Acesse a pasta referente ao pipeline:<br>
`cd gene-expression-analysis-pipeline`<br>

Adicione em `./Data/samples` os arquivos .fastq para a análise.<br>
Adicione em `./Data/samples/metadata` o arquivo metadata.csv para a análise.<br>
Adicione em `./Data/adapters` o arquivo com os adaptadores correspondentes para o processo de trimming.<br>

Rode o comando:<br>
`sudo sh ./local_run_analysis`
