#' Get the courses that have R package dependencies
#' 
#' @export
get_stima_r_courses <- function(){
  rdf <- get_r_course_gsheet()
  names(rdf)[5:length(rdf)]
}



