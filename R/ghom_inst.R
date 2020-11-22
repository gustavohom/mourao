#' Instalar, atualizar e anexar pacotes
#' 
#' Recebe um vetor ou variavel com nome de pacotes. Verifica se estão instalados e atualizados. Em caso negativo, instala e atualiza os pacotes. Carrega todos os pacotes requeridos.
#' 
#' @param pkg vetor de caracteres ou uma variavel contendo o nome do pacote.
#'
#' @export
ghom_inst <-function(pkg) {
  
  ipkg <- c(pkg[!pkg %in% installed.packages()], 
            pkg[pkg %in% rownames(old.packages())])
  
  install.packages(ipkg)
  
  lapply(pkg, library, character = TRUE)
}
