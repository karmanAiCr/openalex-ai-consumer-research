# OpenAlex AI Consumer Research Corpus

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18123218.svg)](https://doi.org/10.5281/zenodo.18123218)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R Version](https://img.shields.io/badge/R-%3E%3D4.0.0-blue)](https://www.r-project.org/)
[![OpenAlex](https://img.shields.io/badge/Data-OpenAlex-orange)](https://openalex.org/)

> **Supplementary Materials for:** "Artificial Intelligence in Consumer Research: A Boundary-Spanning Review"

This repository contains the R code and documentation for replicating the corpus extraction described in our boundary-spanning review of AI in consumer research.


# Install required packages (run once)
install.packages(c("openalexR", "dplyr", "tidyr", "stringr", 
                   "lubridate", "jsonlite", "httr", "purrr"))

# Load libraries
library(openalexR)
library(dplyr)
library(tidyr)
library(stringr)
library(lubridate)
library(jsonlite)
library(httr)
library(purrr)


# AI Modalities
ai_terms <- c(
  "artificial intelligence",
  "machine learning",
  "chatbot",
  "voice assistant",
  "recommender system",
  "virtual influencer",
  "generative AI",
  "large language model",
  "conversational AI",
  "deep learning",
  "neural network",
  "natural language processing",
  "computer vision",
  "algorithm"
)

# Consumer-Facing Terms
consumer_terms <- c(
  "consumer",
  "customer",
  "user",
  "shopper",
  "buyer",
  "client"
)


# Build query string
ai_query <- paste0('"', ai_terms, '"', collapse = " OR ")
consumer_query <- paste0('"', consumer_terms, '"', collapse = " OR ")
full_query <- paste0("(", ai_query, ") AND (", consumer_query, ")")

cat("Search Query:\n", full_query, "\n\n")


start_date <- "2015-01-01"
end_date <- "2025-06-30"

cat("Date Range:", start_date, "to", end_date, "\n")
cat("Document Type: Journal articles\n\n")


cat("=== STARTING CORPUS EXTRACTION ===\n")
cat("This may take 15-30 minutes...\n\n")

# Fetch complete corpus
corpus <- oa_fetch(
  entity = "works",
  search = full_query,
  from_publication_date = start_date,
  to_publication_date = end_date,
  type = "article",
  verbose = TRUE
)

cat("\nCorpus extracted:", nrow(corpus), "papers\n\n")

cat("=== SAVING DATA ===\n")

# Create output directory
if (!dir.exists("output")) {
  dir.create("output")
}

# Save full corpus
write.csv(corpus, "output/ai_consumer_corpus_full.csv", row.names = FALSE)
cat("✓ Saved: output/ai_consumer_corpus_full.csv\n")

# Save R workspace
save.image("output/openalex_workspace.RData")
cat("✓ Saved: output/openalex_workspace.RData\n\n")

cat("=== EXTRACTION COMPLETE ===\n\n")
cat("SUMMARY:\n")
cat("- Total papers:", nrow(corpus), "\n")
cat("- Total columns:", ncol(corpus), "\n")
cat("- Date range:", start_date, "to", end_date, "\n")
cat("- Output directory: output/\n")
cat("\nColumn names:\n")
print(names(corpus))
cat("\nAll files saved successfully!\n")

cat("=== GEOGRAPHIC DISTRIBUTION ===\n")

geographic_dist <- corpus_clean %>%
  filter(!is.na(first_author_country)) %>%
  count(first_author_country, sort = TRUE, name = "n_papers") %>%
  head(20)

print(geographic_dist)
cat("\n")


cat("=== TOP 20 JOURNALS ===\n")

top_venues <- corpus_clean %>%
  filter(!is.na(journal)) %>%
  count(journal, sort = TRUE, name = "n_papers") %>%
  head(20)

print(top_venues)
cat("\n")


# Create output directory if it doesn't exist
if (!dir.exists("output")) {
  dir.create("output")
  cat("✓ Created output/ directory\n")
}


cat("=== EXPORTING RESULTS ===\n")

# 1. Full corpus
write.csv(corpus_clean, "output/ai_consumer_corpus_full.csv", row.names = FALSE)
cat("✓ Saved: output/ai_consumer_corpus_full.csv\n")

# 2. Temporal growth
write.csv(temporal_growth, "output/temporal_growth.csv", row.names = FALSE)
cat("✓ Saved: output/temporal_growth.csv\n")

# 3. Theme distribution
write.csv(theme_summary, "output/theme_distribution.csv", row.names = FALSE)
cat("✓ Saved: output/theme_distribution.csv\n")

# 4. Geographic distribution
write.csv(geographic_dist, "output/geographic_distribution.csv", row.names = FALSE)
cat("✓ Saved: output/geographic_distribution.csv\n")

# 5. Top venues
write.csv(top_venues, "output/top_venues.csv", row.names = FALSE)
cat("✓ Saved: output/top_venues.csv\n")

# 6. R workspace
save.image("output/openalex_search_workspace.RData")
cat("✓ Saved: output/openalex_search_workspace.RData\n\n")


cat("=== EXTRACTION COMPLETE ===\n\n")
cat("SUMMARY:\n")
cat("Total papers found:", as.numeric(result_count), "\n\n")
cat("- Date range:", start_date, "to", end_date, "\n")
cat("- Papers with abstracts:", sum(!is.na(corpus_clean$abstract)), 
    "(", round(sum(!is.na(corpus_clean$abstract))/nrow(corpus_clean)*100, 1), "%)\n")
cat("- Papers with DOI:", sum(!is.na(corpus_clean$doi)), 
    "(", round(sum(!is.na(corpus_clean$doi))/nrow(corpus_clean)*100, 1), "%)\n")
cat("- Open access papers:", sum(corpus_clean$is_open_access, na.rm = TRUE),
    "(", round(sum(corpus_clean$is_open_access, na.rm = TRUE)/nrow(corpus_clean)*100, 1), "%)\n")
cat("\nAll files saved to output/ directory\n")
cat("Use load('output/openalex_search_workspace.RData') to resume analysis\n")

