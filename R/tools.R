#' @title
#' System tools: Creating appropriate abort messages
#'
#' @description
#' An abort or warning message may involve names of many different objects, all need to be processed and collapsed appropriately for people to understand clearly. These functions below help to collapse different object names into 1 string.
#'
#' @param columns Column names as a vector of characters
#' @param class Classes as a vector of characters
#' @param set Dataset names as a vector of characters
#' @param sheet xlsx sheet names as a vector of characters
#' @param code Code as a vector of characters
#' @param file File extention as a vector of characters
#'
#' @return A single, formatted character string, that can be used directly
#' @rdname msg_tools
#' @export
msg_column = function(columns){
  #0 Check ####
  if(rlang::is_missing(columns)){call::abort_NoArg(x = columns)}
  #1 Return ####
  return(stringr::str_flatten(string = paste0("{.col ", columns, "}"),
                              collapse = ", "))

}

#' @rdname msg_tools
#' @export
msg_class = function(class){
  #0 Check ####
  if(rlang::is_missing(class)){call::abort_NoArg(x = class)}
  #1 Return ####
  return(stringr::str_flatten(string = paste0("{.cls ", class, "}"),
                              collapse = ", "))
}

#' @rdname msg_tools
#' @export
msg_set = function(set){
  #0 Check ####
  if(rlang::is_missing(set)){call::abort_NoArg(x = set)}
  #1 Return ####
  return(stringr::str_flatten(string = paste0("{.set ", set, "}"),
                              collapse = ", "))
}

#' @rdname msg_tools
#' @export
msg_sheet = function(sheet){
  #0 Check ####
  if(rlang::is_missing(sheet)){call::abort_NoArg(x = sheet)}
  #1 Return ####
  return(stringr::str_flatten(string = paste0("{.sheet ", sheet, "}"),
                              collapse = ", "))
}


#' @rdname msg_tools
#' @export
msg_code = function(code){
  #0 Check ####
  if(rlang::is_missing(code)){call::abort_NoArg(x = code)}
  #1 Return ####
  return(stringr::str_flatten(string = paste0("{.code ", code, "}"),
                              collapse = ", "))
}

#' @rdname msg_tools
#' @export
msg_file = function(file){
  #0 Check ####
  if(rlang::is_missing(file)){call::abort_NoArg(x = file)}
  #1 Return ####
  return(stringr::str_flatten(string = paste0("{.file ", file, "}"),
                              collapse = ", "))
}

