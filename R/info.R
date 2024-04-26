#' @title System Info
#'
#' @description
#' The below function tells system on the current system info, including the name of the node, username operating R, and PID.
#'
#'
#' @return A list of system information
#'
#' @examples call::info()
#' @export
info = function(){
  return(list(nodename = Sys.info()[["nodename"]],
              user = Sys.info()[["user"]],
              pid = Sys.getpid(),
              time = Sys.time()))
}
