#' @title
#' Additional message themeing
#'
#' @description
#' `call::abort` calls this function for additional themes.
#'
#' @return A `cli` theme
#' @examples call::theme()
#' @export
theme = function(){
  return(cli::cli_div(theme = list(span.na = list("color" = "red", "before" = "#"),
                                   span.mtx = list("color" = "blue",
                                                   "before" = "'", "after" = "'",
                                                   "text-decoration" = "underline"),
                                   span.col = list("color" = "orange",
                                                   "text-decoration" = "underline"),
                                   span.sheet = list("color" = "purple",
                                                     "text-decoration" = "underline"),
                                   span.set = list("color" = "aquamarine3",
                                                   "before" = "'", "after" = "'",
                                                   "text-decoration" = "underline")),
                      .envir = rlang::caller_env(n = 1)))
}
