#' Get R course sheet
#'
#' @details Get the R course sheet from Google sheets.
#'
get_r_course_gsheet <- function(){
  gs_df <- gsheet::gsheet2tbl('https://docs.google.com/spreadsheets/d/1urpVyCVr3w_hFlTkccKkYPhzf9SpLA_k8fWbcUwUlhE')
  gs_df
}