# Instalar pacotes necessários, se ainda não estiverem instalados
if (!requireNamespace("ComplexHeatmap", quietly = TRUE)) {
  install.packages("ComplexHeatmap")
}
if (!requireNamespace("viridis", quietly = TRUE)) {
  install.packages("viridis")
}

# Carregar bibliotecas
library(ComplexHeatmap)
library(viridis)
library(grid)

# Exemplo de dados para o heatmap
# Substitua `d_counts_av0_matrix` pelos seus próprios dados
# Aqui, criamos uma matriz fictícia de exemplo
set.seed(123) # Para reprodutibilidade
d_counts_av0_matrix <- matrix(
  rnorm(50, mean = 10, sd = 5), # Gera valores aleatórios
  nrow = 5,                    # 5 linhas (bibliotecas)
  ncol = 10                    # 10 colunas (cepas)
)
rownames(d_counts_av0_matrix) <- paste("Biblioteca", 1:5)   # Nomes das linhas
colnames(d_counts_av0_matrix) <- paste("Cepa", LETTERS[1:10]) # Nomes das colunas

# Criar heatmap
Heatmap(
  d_counts_av0_matrix,
  name = "RPM",                                # Nome da escala
  row_title = "Bibliotecas de Pequenos RNAs", # Título para linhas
  row_title_gp = gpar(fontsize = 14, fontface = "bold"),
  row_dend_side = "left",                     # Dendrograma à esquerda
  row_names_side = "left",                    # Nomes das linhas à esquerda
  row_names_gp = gpar(fontsize = 10),         # Fonte dos nomes das linhas
  column_title = "Cepas de Wolbachia",        # Título para colunas
  column_title_gp = gpar(fontsize = 10, fontface = "bold"),
  column_names_gp = gpar(fontsize = 6),       # Fonte dos nomes das colunas
  col = viridis(100)                          # Paleta de cores
)
#Quando executar o script, você verá o heatmap gerado com as configurações especificadas.
