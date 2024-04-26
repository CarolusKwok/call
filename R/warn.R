#' @title
#' Warning messenger
#'
#' @description
#' Custom `cli` formating can be used to refer different stuff. This function is based on `cli::cli_bullets` for formatting. Note that when writing functions, *do not* use pipe (`%>%`, `|>`) before this function.
#'
#' Supports inline-markup themes. For more information on those custom themes, please refer to `call::theme` and `cli::cli_div`.
#'
#' @param message Message to be displayed, formatted via `cli::cli_bullets()`. For more information, please read `cli::cli_abort`.
#' @param x An argument name in the current function.
#' @param arg Argument to be traced. When referring to this in argument `message`, use `{.arg {arg}}`.
#' @param ... Additional items to consider in the message. Any items that uses glue (`{}`) must be passed through here.
#'
#' @return A warning message
#'
#' @examples call::warn(message = "test")
#' @export
warn = function(message,
                    x,
                    arg = rlang::caller_arg(x),
                    ...){
  #1 Get themes ####
  call::theme()

  #2 Pass dot to the environment ####
  list2env(x = list(...), envir = rlang::current_env())

  #3 Message ####
  cli::cli_text(cli::style_bold(cli::col_yellow("Warning"), " occurred"))
  cli::cli_bullets(text = message, .envir = rlang::current_env())
}
