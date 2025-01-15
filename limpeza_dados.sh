# Avaliação de qualidade das leituras com FastQC
fastqc SRRXXXXXXX.fastq

# Limpeza e corte de sequências de baixa qualidade com Trim Galore
trim_galore --fastqc -q 25 --trim-n --max_n 0 -j 1 --length 18 --dont_gzip SRRXXXXXXX.fastq
# por meio do trim_galore,e Fast QC, podemos cortas dados específicos que não encaixam  na nossa análise. Podemos filtrar o tamanho da sequencia por meio do trim galore, ao afirmar qual o intervalo desejado das sequencias, ou de baixas qualidades nas extremidades. 
# a qualidade da sequencia pode ser avaliada por meio do FastQC, detalhando qualidade geral, contaminação, e a distribuição das sequencias, o que permite ajustar a filtragem no trim galore!.
