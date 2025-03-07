# Construção do índice de alinhamento com Bowtie
bowtie-build reference.fasta reference_index

# Alinhamento das sequências contra a referência de Wolbachia
bowtie -f -S -a -v 0 -p 3 -t reference_index sample.fasta > sample.sam 2> sample_bowtie.log
#reference index é O índice gerado anteriormente com bowtie-build. É a sequência de referência contra a qual as sequências serão alinhadas.
#sample fasta é O arquivo de entrada contendo as sequências que você deseja alinhar à referência.
