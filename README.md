# Detecção de Wolbachia em Bibliotecas de Pequenos RNAs

Este repositório contém os códigos utilizados para identificar sequências de **Wolbachia** em bibliotecas de pequenos RNAs. As análises incluem desde o download das sequências até a visualização dos dados em heatmaps, usando ferramentas de alinhamento e pacotes estatísticos no R.

## Objetivo
Automatizar e documentar o fluxo de trabalho para detectar sequências de **Wolbachia**, incluindo etapas de limpeza, alinhamento e visualização dos dados.

## Fluxo de Trabalho
1. **Download de Sequências**  
   - As bibliotecas de pequenos RNAs foram obtidas de bases de dados públicas.
   
2. **Limpeza de Dados**  
   - Ferramentas como `trim_galore` e `FASTqc` foram usadas para filtrar sequências por qualidade, tamanho e similaridade.

3. **Alinhamento**  
   - O alinhamento das sequências foi realizado com o software `Bowtie`, utilizando parâmetros personalizados para identificar sequências de **Wolbachia**.

4. **Visualização de Dados**  
   - Um heatmap foi gerado no R utilizando o pacote `ComplexHeatmap` para uma análise visual das diferenças nas sequências detectadas.

## Ferramentas Utilizadas
- **trim_galore**: Para remoção de adaptadores e limpeza das sequências.
- **FASTqc**: Para avaliação da qualidade dos dados.
- **Bowtie**: Para o alinhamento das sequências.
- **R**: Para análise estatística e visualização (pacote `ComplexHeatmap`).
- **GPT**: Para suporte em geração de scripts e automação de tarefas.

## Sobre
Os códigos e ferramentas foram aplicados no contexto da disciplina **Práticas em Bioinformática**, sendo adaptados e otimizados para os propósitos deste projeto.
 
