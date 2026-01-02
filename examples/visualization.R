# ==============================================================================
# Visualization Example
# ==============================================================================
# This script creates visualizations from the extracted corpus
# 
# Prerequisites: Run openalex_ai_consumer_search.R first
# Input: output/temporal_growth.csv, output/theme_distribution.csv
# Output: PNG files with plots
# ==============================================================================

# Load required packages
library(ggplot2)
library(dplyr)
library(readr)
library(scales)

# Check if output files exist
if (!file.exists("output/temporal_growth.csv")) {
  stop("Error: Run openalex_ai_consumer_search.R first to generate data files")
}

# ==============================================================================
# 1. TEMPORAL GROWTH VISUALIZATION
# ==============================================================================

# Load temporal data
temporal_data <- read_csv("output/temporal_growth.csv", show_col_types = FALSE)

# Create growth plot
growth_plot <- ggplot(temporal_data, aes(x = pub_year, y = n_papers)) +
  geom_line(size = 1.2, color = "#2C3E50") +
  geom_point(size = 3, color = "#3498DB") +
  geom_vline(xintercept = 2022.917, linetype = "dashed", 
             color = "#E74C3C", size = 1) +  # ChatGPT launch (Nov 2022)
  annotate("text", x = 2022.917, y = max(temporal_data$n_papers) * 0.9,
           label = "ChatGPT Launch", hjust = 1.1, color = "#E74C3C", size = 3.5) +
  labs(
    title = "Explosive Growth in AI Consumer Research",
    subtitle = "Publication count (2015-2025)",
    x = "Year",
    y = "Number of Papers",
    caption = "Source: OpenAlex | N = 10,903 papers"
  ) +
  scale_y_continuous(labels = comma) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 12, color = "gray40"),
    axis.title = element_text(size = 12, face = "bold"),
    axis.text = element_text(size = 10),
    panel.grid.minor = element_blank()
  )

# Save plot
ggsave("output/temporal_growth.png", growth_plot, 
       width = 10, height = 6, dpi = 300)

cat("✓ Saved: output/temporal_growth.png\n")

# ==============================================================================
# 2. CAGR CALCULATION AND ANNOTATION
# ==============================================================================

papers_2015 <- temporal_data %>% filter(pub_year == 2015) %>% pull(n_papers)
papers_2024 <- temporal_data %>% filter(pub_year == 2024) %>% pull(n_papers)
cagr <- ((papers_2024 / papers_2015)^(1/9) - 1) * 100

growth_with_cagr <- growth_plot +
  annotate("text", x = 2017, y = max(temporal_data$n_papers) * 0.7,
           label = paste0("CAGR: ", round(cagr, 1), "%"),
           hjust = 0, size = 5, fontface = "bold", color = "#27AE60")

ggsave("output/temporal_growth_annotated.png", growth_with_cagr,
       width = 10, height = 6, dpi = 300)

cat("✓ Saved: output/temporal_growth_annotated.png\n")

# ==============================================================================
# 3. THEMATIC DISTRIBUTION VISUALIZATION
# ==============================================================================

# Load theme data
theme_data <- read_csv("output/theme_distribution.csv", show_col_types = FALSE)

# Create bar plot
theme_plot <- ggplot(theme_data, aes(x = reorder(Theme, Count), y = Count)) +
  geom_bar(stat = "identity", fill = "#3498DB", alpha = 0.8) +
  geom_text(aes(label = paste0(Percentage, "%")), 
            hjust = -0.2, size = 3.5, fontface = "bold") +
  coord_flip() +
  labs(
    title = "Research Themes in AI Consumer Literature",
    subtitle = "Distribution across major thematic areas",
    x = NULL,
    y = "Number of Papers",
    caption = "Source: OpenAlex | N = 10,903 papers"
  ) +
  scale_y_continuous(labels = comma, expand = expansion(mult = c(0, 0.15))) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 12, color = "gray40"),
    axis.title = element_text(size = 12, face = "bold"),
    axis.text = element_text(size = 10),
    axis.text.y = element_text(size = 11),
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank()
  )

ggsave("output/theme_distribution.png", theme_plot,
       width = 10, height = 6, dpi = 300)

cat("✓ Saved: output/theme_distribution.png\n")

# ==============================================================================
# 4. CUMULATIVE GROWTH VISUALIZATION
# ==============================================================================

cumulative_plot <- ggplot(temporal_data, aes(x = pub_year, y = cumulative)) +
  geom_area(fill = "#3498DB", alpha = 0.6) +
  geom_line(size = 1.2, color = "#2C3E50") +
  labs(
    title = "Cumulative Growth of AI Consumer Research",
    subtitle = "Total papers published (2015-2025)",
    x = "Year",
    y = "Cumulative Papers",
    caption = "Source: OpenAlex | N = 10,903 papers"
  ) +
  scale_y_continuous(labels = comma) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    plot.subtitle = element_text(size = 12, color = "gray40"),
    axis.title = element_text(size = 12, face = "bold"),
    axis.text = element_text(size = 10),
    panel.grid.minor = element_blank()
  )

ggsave("output/cumulative_growth.png", cumulative_plot,
       width = 10, height = 6, dpi = 300)

cat("✓ Saved: output/cumulative_growth.png\n")

# ==============================================================================
# 5. SUMMARY STATISTICS
# ==============================================================================

cat("\n=== VISUALIZATION SUMMARY ===\n")
cat("Generated 4 visualizations:\n")
cat("1. temporal_growth.png - Annual publication counts\n")
cat("2. temporal_growth_annotated.png - With CAGR annotation\n")
cat("3. theme_distribution.png - Thematic breakdown\n")
cat("4. cumulative_growth.png - Cumulative growth curve\n\n")

cat("Key Statistics:\n")
cat("- Total papers:", sum(temporal_data$n_papers), "\n")
cat("- CAGR (2015-2024):", round(cagr, 1), "%\n")
cat("- Fold increase:", round(papers_2024 / papers_2015, 1), "x\n")
cat("- Largest theme:", theme_data$Theme[1], "(", theme_data$Percentage[1], "%)\n")

cat("\n✓ All visualizations saved to output/ directory\n")
