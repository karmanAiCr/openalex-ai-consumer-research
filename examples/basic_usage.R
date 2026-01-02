# ==============================================================================
# Basic Usage Example
# ==============================================================================
# This script demonstrates the simplest way to use the OpenAlex search
# 
# Expected output: Basic corpus statistics
# Runtime: ~5 minutes
# ==============================================================================

# Load required packages
library(openalexR)
library(dplyr)

# Set your email for polite API access (REQUIRED)
options(openalexR.mailto = "karman.kaur@spjain.edu.au")

# ==============================================================================
# SIMPLE QUERY: Just get basic statistics
# ==============================================================================

# Define search terms
ai_terms <- c("artificial intelligence", "machine learning", "chatbot")
consumer_terms <- c("consumer", "customer", "user")

# Construct query
ai_query <- paste0('"', ai_terms, '"', collapse = " OR ")
consumer_query <- paste0('"', consumer_terms, '"', collapse = " OR ")
full_query <- paste0("(", ai_query, ") AND (", consumer_query, ")")

# Get count only (fast, no data download)
result_count <- oa_fetch(
  entity = "works",
  search = full_query,
  from_publication_date = "2015-01-01",
  to_publication_date = "2025-06-30",
  type = "article",
  count_only = TRUE
)

cat("Total papers found:", result_count, "\n")

# ==============================================================================
# SAMPLE EXTRACTION: Get first 100 papers
# ==============================================================================

sample_corpus <- oa_fetch(
  entity = "works",
  search = full_query,
  from_publication_date = "2015-01-01",
  to_publication_date = "2025-06-30",
  type = "article",
  verbose = TRUE,
  pages = 1,  # Get only first page (100 results)
  per_page = 100
)

cat("\nSample extracted:", nrow(sample_corpus), "papers\n")

# ==============================================================================
# BASIC ANALYSIS
# ==============================================================================

# Papers by year
yearly_counts <- sample_corpus %>%
  count(publication_year) %>%
  arrange(publication_year)

print(yearly_counts)

# Most cited papers
top_cited <- sample_corpus %>%
  select(display_name, publication_year, cited_by_count) %>%
  arrange(desc(cited_by_count)) %>%
  head(10)

cat("\n=== Top 10 Most Cited Papers (in sample) ===\n")
print(top_cited)

cat("\n=== Example Complete ===\n")
cat("For full corpus extraction, run: source('openalex_ai_consumer_search.R')\n")
