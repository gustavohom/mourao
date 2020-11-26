#' @title Carregar, instalar e atualizar pacotes
#' @name m_load
#'
#' @description A função verifica se o pacote está instalado e atualizado. Caso negativo, irá instalar a versão mais atualizada do pacote.
#' Em seguida, carrega todos os pacotes nomeados.
#'
#' @param pkg o nome de um pacote ou um vetor de string com o nome de varios pacotes.
#'
#' @details A função verifica se o pacote está instalado e atualizado. Caso negativo, irá instalar a versão mais atualizada do pacote.
#' Em seguida, carrega todos os pacotes nomeados.
#'
#' @return Pacotes anexados
#'
#' @author Mourao
#'
#' @examples
#' m_load("beepr")
#' 
#' pkg <- c("beepr", "magrittr")
#' m_load(pkg)
#' @export
#' 
m_load <-function(pkg) {
  
  ipkg <- c(pkg[!pkg %in% installed.packages()], 
            pkg[pkg %in% rownames(old.packages())])
  
  install.packages(ipkg)
  
  lapply(pkg, library, character = TRUE)
}
