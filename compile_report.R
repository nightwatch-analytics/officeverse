compile_report <- function(pd) {

  chapters <- dir_ls(pd, type = "directory")

  files <- list.files()

  pdf_combine()

}
