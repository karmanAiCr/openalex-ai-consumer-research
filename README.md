# OpenAlex AI Consumer Research Corpus

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.18123218.svg)](https://doi.org/10.5281/zenodo.18123218)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R Version](https://img.shields.io/badge/R-%3E%3D4.0.0-blue)](https://www.r-project.org/)
[![OpenAlex](https://img.shields.io/badge/Data-OpenAlex-orange)](https://openalex.org/)

> **Supplementary Materials for:** "Artificial Intelligence in Consumer Research: A Boundary-Spanning Review"

This repository contains the R code and documentation for replicating the corpus extraction described in our boundary-spanning review of AI in consumer research.


```r
# 1. Install required packages
install.packages(c("openalexR", "dplyr", "tidyr", "stringr", 
                   "lubridate", "jsonlite", "httr", "purrr"))

openalex-ai-consumer-research/
├── openalex_ai_consumer_search.R    # Main extraction script
├── README.md                         # This file
├── requirements.txt                  # R package dependencies
├── CITATION.bib                      # Citation information
├── LICENSE.txt                       # MIT License
├── CHANGELOG.md                      # Version history
├── docs/
│   ├── METHODOLOGY.md               # Detailed search methodology
│   ├── TROUBLESHOOTING.md           # Common issues and solutions
│   └── VALIDATION.md                # Corpus validation procedures
├── examples/
│   ├── basic_usage.R                # Simple usage example
│   ├── thematic_analysis.R          # Theme categorization example
│   └── visualization.R              # Results visualization
└── output/                          # Created by script (not in repo)
    ├── ai_consumer_corpus_full.csv
    ├── temporal_growth.csv
    ├── theme_distribution.csv
    ├── geographic_distribution.csv
    └── top_venues.csv

**AI Modalities (OR-combined):**
- Artificial intelligence
- Machine learning
- Chatbot
- Voice assistant
- Recommender system
- Virtual influencer
- Generative AI
- Large language model
- Conversational AI
- Deep learning
- Neural network
- Natural language processing
- Computer vision
- Algorithm

**Consumer-Facing Terms (OR-combined):**
- Consumer
- Customer
- User
- Shopper
- Buyer
- Client

**Combined Query:**  
`(AI terms) AND (consumer terms)`

- **Date Range:** 2015-01-01 to 2025-06-30
- **Document Type:** Journal articles only
- **Database:** OpenAlex
- **Language:** All languages included



**Included:**
- Studies examining AI as experienced by consumers
- Empirical research on consumer outcomes
- Consumer-facing AI applications

**Excluded:**
- Pure algorithm development papers
- Purely conceptual papers without data
- B2B or firm-internal applications
- Engineering-focused studies without consumer behavior


| Metric | Expected Value |
|--------|---------------|
| Total corpus size | ~10,903 papers (±100) |
| 2015 papers | 156 |
| 2024 papers | 2,634 |
| CAGR (2015-2024) | ~40% |
| Fold increase | 16.9x |
| Runtime | 15-30 minutes |


The script creates 6 files in the `output/` directory:

1. **ai_consumer_corpus_full.csv** (~150 MB) - Complete corpus with metadata
2. **temporal_growth.csv** - Year-by-year statistics
3. **theme_distribution.csv** - Thematic categorization
4. **geographic_distribution.csv** - Country-level breakdown
5. **top_venues.csv** - Top 20 journals
6. **openalex_search_workspace.RData** - R workspace for further analysis




```bibtex
@misc{YourRepo2025,
  author = {[Authors]},
  title = {OpenAlex AI Consumer Research Corpus: Supplementary Materials},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/karmanAiCr/openalex-ai-consumer-research},
  doi = {10.5281/zenodo.18123218}
}
```


```bibtex
@article{Priem2022,
  author = {Priem, Jason and Piwowar, Heather and Orr, Richard},
  title = {OpenAlex: A Fully-Open Index of Scholarly Works},
  journal = {arXiv preprint arXiv:2205.01833},
  year = {2022}
}

---

**Last Updated:** November 10, 2025  
**Repository:** https://github.com/karmanAiCr/openalex-ai-consumer-research  
**DOI:** 10.5281/zenodo.18123218  
**License:** MIT + CC0
