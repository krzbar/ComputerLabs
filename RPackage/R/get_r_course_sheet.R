#' Get R course sheet
#'
#' @details Get the R course sheet from Google sheets.
#'
get_r_course_gsheet <- function(){
  gs_obj <- googlesheets::gs_key(x = "1urpVyCVr3w_hFlTkccKkYPhzf9SpLA_k8fWbcUwUlhE", verbose = FALSE)
  gs_df <- suppressMessages(googlesheets::gs_read(gs_obj, verbose = FALSE))
  gs_df
}