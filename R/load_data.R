# Load index and find if each entry have a respective codebook

path_back_end <- here::here("R", "codebooks")
data <- readxl::read_excel(file.path(path_back_end, "00_index.xlsx"), sheet = "index")

tools::file_path_sans_ext(list.files(path_back_end))

missing_codebooks <- setdiff(data$dataset_name, tools::file_path_sans_ext(list.files(path_back_end)))
if (length(missing_codebooks) > 0) {
  message(paste("Missing codebooks for:", paste(missing_codebooks, collapse = ", ")))
}
rm(path_back_end, missing_codebooks)

# db_path <- here::here("R", "codebooks_db.xlsx")
# if (file.exists(db_path)){
#   codebooks_db <- readxl::read_excel(db_path)
# } else {
#   codebooks_db <- 
# }


