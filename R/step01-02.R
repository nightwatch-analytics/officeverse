library(fs)
library(qpdf)

pd = "test"

chapters <- dir_ls(pd, type = "directory")

for (c in chapters) {

  chapter_title <- janitor::make_clean_names(
    sub(
      "[0-9]*_", "",
      basename(c)
    ),
    case = "title"
  )

}
