check_packages <- function(package_names){
  packages_to_install <- package_names[
    which(!package_names %in% installed.packages())
    ]
  
  if (length(packages_to_install) > 0) {
    install.packages(
      packages_to_install,
      repos = 'https://cloud.r-project.org'
    )
  }
  
  if (length(package_names) > 0) {
    lapply(package_names, require, character.only = TRUE)
  }
}
