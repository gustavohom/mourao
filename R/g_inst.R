#' @title Carregar
#' @name inst
#'
#' @description nao quero
#'
#' @param pkg teste
#'
#' @details Depois detalho
#'
#' @return X
#'
#' @author Mourao
#'
#' @examples
#' asd
#' @export
#' 
inst <-function(pkg) {
  
  ipkg <- c(pkg[!pkg %in% installed.packages()], 
            pkg[pkg %in% rownames(old.packages())])
  
  install.packages(ipkg)
  
  lapply(pkg, library, character = TRUE)
}