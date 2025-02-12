chapter_title <- janitor::make_clean_names(
  sub(
    "[0-9]*_", "",
    chapter_title
  ),
  case = "title"
)

generate_doc_list <- function(pd) {

  fPaths <- dir_ls(pd,recurse = T, type = "file")

  docs <- dir_ls("test", type = "directory") %>%
    lapply(dir_ls) %>%
    unlist(use.names = F) %>%
    basename() %>%
    str_remove(".pdf")

}
