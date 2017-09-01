#' Install Stima packages
#'
#' @param course What course to install for. See \code{get_stima_r_courses()}.
#' 
#' @details The package is based on the Stima R Package google sheets
#' 
#' @seealso get_stima_r_courses
#'
#' @export
install_stima_packages <- function(course = NULL){
  gs_df <- get_r_course_gsheet()  
  stima_r_courses <- get_stima_r_courses()

  checkmate::assert_names(names(gs_df)[1:3], identical.to = c("R package", "CRAN: specify nothing Github: specify 1 Bioconductor: Specify 2", "GitHub and Bioconductor path"))  
  checkmate::assert_string(course, null.ok = TRUE)
  
  if(!is.null(course)) {
    checkmate::assert_choice(course, stima_r_courses)
    # Filter out course
    gs_df <- gs_df[!is.na(gs_df[[course]]), ]
  }  

  # Install CRAN stuff
  cran_packages <- gs_df[[1]][is.na(gs_df[[2]])]
  if(length(cran_packages) > 0){
    utils::install.packages(cran_packages, repos = "https://cloud.r-project.org")
  }
  
  # Install GitHub stuff
  github_packages <- which(!is.na(gs_df[[2]]) & gs_df[[2]] == 1)
  for (i in seq_along(github_packages)){
    devtools::install_github(repo = gs_df[[3]][github_packages[i]])
  }
  
  invisible(gs_df)
}