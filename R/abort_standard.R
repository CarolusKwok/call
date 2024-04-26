#' @title
#' Standard abort message
#'
#' @description
#' Supported by `call::abort`, these provide a standard abort messages to the user and does not require any fiddling.
#' *Note*: These functions only provide the most basic of input checking. Please double check prior to using it.
#'
#' @param x The expected argument
#' @param class (character) Expected class of the input
#' @param length (numeric) Expected length of the input
#'
#' @return A standard abort message
#'
#' @examples
#' abort_NoArg(x = xlsxFile)
#' abort_WrongClass(x = xlsxFile, class = "character") #This is for inputing xlsx file to R
#' abort_WrongLength(x = xlsxFile, length = 1) #Expecting 1 path to R
#' @rdname abort_standard
#' @export
abort_NoArg = function(x){
  #1 Abort ####
  call::abort(message = c("x" = "Missing {.arg {arg}}",
                          "i" = "Please enter {.arg {arg}}"),
              arg = rlang::caller_arg(arg = x))
}

#' @rdname abort_standard
#' @export
abort_WrongClass = function(x, class){
  #1 Abort ####
  call::abort(message = c("x" = "Wrong class in {.arg {arg}}",
                          "i" = paste0("Please use ", call::msg_class(class = class), " in {.arg {arg}}")),
              arg = rlang::caller_arg(arg = x))
}

#' @rdname abort_standard
#' @export
abort_WrongLength = function(x, length){
  #2 Abort ####
  call::abort(message = c("x" = "Wrong length in {.arg {arg}}",
                          "i" = "Please use {.arg {arg}} with {length} item."),
              arg = rlang::caller_arg(arg = x), length = length)
}
