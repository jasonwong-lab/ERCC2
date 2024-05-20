

library(stringr)

bed_files <- c("CBS_Q1_hg19+uracil+nuc.bed","CBS_Q2_hg19+uracil+nuc.bed", "CBS_Q3_hg19+uracil+nuc.bed", "CBS_Q4_hg19+uracil+nuc.bed")

for (file in bed_files) {
  # Read the BED file
  data <- read.delim(file, header = FALSE)
  
  # Perform the desired calculations and column renaming
  data$UgdX_exp_minus_inp <- data$V3 - data$V4
  data$TA_content <- str_count(data$V5, "[AaTt]")
  colnames(data)[2] <- "CTCF_coverage"
  colnames(data)[3] <- "UdgX_incorp_PMX_exp"
  colnames(data)[4] <- "UdgX_incorp_PMX_input"
  data$UdgX_norm_TA <- data$UdgX_incorp_PMX_exp / data$TA_content
  
  # Write the modified data frame to a file
  output_file <- paste0(file, "_res.bed")
  write.table(data, file = output_file, sep = "\t", quote = FALSE, row.names = FALSE, col.names = TRUE)
}