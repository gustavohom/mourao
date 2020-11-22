pkg <-function(pkg) {
  
  ipkg <- c(pkg[!pkg %in% installed.packages()], 
            pkg[pkg %in% rownames(old.packages())])
  
  install.packages(ipkg)
  
  lapply(pkg, library, character = TRUE)
}