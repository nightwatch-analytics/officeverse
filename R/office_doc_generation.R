library(officer)

doc_1 <- read_docx() |>
  body_add_par("Hello world!", style = "heading 1") |>
  body_add_par("", style = "Normal") |>
  body_add_table(mtcars, style = "table_template")

print(doc_1, target = "example_1.docx")

doc_2 <- read_docx() |>
  body_add_par("Hello world!", style = "Normal") |>
  body_add_table(head(mtcars), style = "Table Professional")

print(doc_2, target = "example_2.docx")
