# OpenAlex AI Consumer Research Corpus

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.XXXXXXX.svg)](https://doi.org/10.5281/zenodo.XXXXXXX)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![R Version](https://img.shields.io/badge/R-%3E%3D4.0.0-blue)](https://www.r-project.org/)
[![OpenAlex](https://img.shields.io/badge/Data-OpenAlex-orange)](https://openalex.org/)

> **Supplementary Materials for:** "Artificial Intelligence in Consumer Research: A Boundary-Spanning Review"

This repository contains the R code and documentation for replicating the corpus extraction described in our boundary-spanning review of AI in consumer research.

---

## 📊 Quick Stats

- **Corpus Size:** 10,903 papers
- **Time Period:** 2015 - June 2025
- **Growth Rate:** 16.9x increase (CAGR ~40%)
- **Source:** OpenAlex bibliometric database
- **Document Type:** Journal articles only

---

## 🚀 Quick Start

```r
# 1. Install required packages
install.packages(c("openalexR", "dplyr", "tidyr", "stringr", 
                   "lubridate", "jsonlite", "httr", "purrr"))

# 2. Clone this repository
git clone https://github.com/karmanAiCr/openalex-ai-consumer-research.git
cd openalex-ai-consumer-research

# 3. Open R and set your email for polite API access
options(openalexR.mailto = "karman.kaur@spjain.edu.au")

# 4. Run the script
source("openalex_ai_consumer_search.R")
```

**Output:** Creates `output/` directory with corpus CSV and summary tables.

---

## 📁 Repository Structure

```
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
```

---

## 📖 Documentation

### Full Documentation
- **[Installation Guide](docs/INSTALLATION.md)** - System requirements and setup
- **[Methodology](docs/METHODOLOGY.md)** - Search strategy and Boolean query
- **[Usage Examples](examples/)** - Sample code for common tasks
- **[Troubleshooting](docs/TROUBLESHOOTING.md)** - Solutions to common issues
- **[Validation](docs/VALIDATION.md)** - How to verify results

### Quick Links
- [Search Terms](#search-terms)
- [Eligibility Criteria](#eligibility-criteria)
- [Expected Output](#expected-output)
- [Citation](#citation)

---

## 🔍 Search Methodology

### Search Terms

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

### Filters Applied

- **Date Range:** 2015-01-01 to 2025-06-30
- **Document Type:** Journal articles only
- **Database:** OpenAlex
- **Language:** All languages included

### Eligibility Criteria

**✅ Included:**
- Studies examining AI as experienced by consumers
- Empirical research on consumer outcomes
- Consumer-facing AI applications

**❌ Excluded:**
- Pure algorithm development papers
- Purely conceptual papers without data
- B2B or firm-internal applications
- Engineering-focused studies without consumer behavior

---

## 📊 Expected Output

When you run the script successfully, you should obtain:

| Metric | Expected Value |
|--------|---------------|
| Total corpus size | ~10,903 papers (±100) |
| 2015 papers | 156 |
| 2024 papers | 2,634 |
| CAGR (2015-2024) | ~40% |
| Fold increase | 16.9x |
| Runtime | 15-30 minutes |

### Output Files

The script creates 6 files in the `output/` directory:

1. **ai_consumer_corpus_full.csv** (~150 MB) - Complete corpus with metadata
2. **temporal_growth.csv** - Year-by-year statistics
3. **theme_distribution.csv** - Thematic categorization
4. **geographic_distribution.csv** - Country-level breakdown
5. **top_venues.csv** - Top 20 journals
6. **openalex_search_workspace.RData** - R workspace for further analysis

---

## 🎯 Key Features

- ✅ **Transparent:** Full Boolean query and filters documented
- ✅ **Reproducible:** Exact package versions specified
- ✅ **Validated:** Results match reported statistics (±2%)
- ✅ **Open:** MIT License for code, CC0 for data
- ✅ **Comprehensive:** Includes temporal, thematic, and geographic analysis
- ✅ **Well-documented:** Extensive comments and examples

---

## 📈 Corpus Highlights

### Temporal Growth
- **156 papers (2015)** → **2,634 papers (2024)**
- **ChatGPT effect:** 61.8% growth post-2023
- **Acceleration:** Publication volumes peaked 2023-2025

### Thematic Distribution
- Personalization & Recommendations: 24.9%
- Chatbots & Voice Assistants: 18.7%
- Trust & Disclosure: 18.2%
- Generative AI: 6.3% (fastest-growing)

### Geographic Distribution
- North America: 45.5%
- Asia: 4.0% (China prominent)
- Cross-cultural studies: 3.6%

### Methodological Approaches
- Survey-based: 13.5%
- Experimental: 11.7%
- Secondary data: 11.2%
- Qualitative: 8.8%
- Mixed methods: 0.5% (rare)

---

## 💻 System Requirements

### Software
- **R:** Version 4.0.0 or higher
- **Operating System:** Windows, macOS, or Linux
- **Internet:** Required for OpenAlex API access

### R Packages
```r
openalexR (>= 1.3.0)
dplyr (>= 1.1.0)
tidyr (>= 1.3.0)
stringr (>= 1.5.0)
lubridate (>= 1.9.0)
jsonlite (>= 1.8.0)
httr (>= 1.4.0)
purrr (>= 1.0.0)
```

### Hardware
- **RAM:** 4 GB minimum, 8 GB recommended
- **Storage:** 500 MB free space for output files
- **Network:** Stable internet connection

---

## 🐛 Troubleshooting

### Common Issues

**Problem:** `Rate limit exceeded`  
**Solution:** Set your email in line 20: `options(openalexR.mailto = "karman.kaur@spjain.edu.au")`

**Problem:** `Cannot allocate vector of size X`  
**Solution:** Increase R memory or run on machine with more RAM

**Problem:** `Package 'X' not found`  
**Solution:** `install.packages("X")`

**Problem:** Results differ from reported statistics  
**Solution:** Minor variations (<2%) expected due to OpenAlex updates

See [TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md) for complete guide.

---

## 📚 Citation

### Cite the Paper

```bibtex
@article{YourPaper2025,
  author = {[Authors]},
  title = {Artificial Intelligence in Consumer Research: A Boundary-Spanning Review},
  journal = {[Journal]},
  year = {2025},
  volume = {[Volume]},
  pages = {[Pages]},
  doi = {[DOI]}
}
```

### Cite this Repository

```bibtex
@misc{YourRepo2025,
  author = {[Authors]},
  title = {OpenAlex AI Consumer Research Corpus: Supplementary Materials},
  year = {2025},
  publisher = {GitHub},
  url = {https://github.com/karmanAiCr/openalex-ai-consumer-research},
  doi = {10.5281/zenodo.XXXXXXX}
}
```

### Cite OpenAlex

```bibtex
@article{Priem2022,
  author = {Priem, Jason and Piwowar, Heather and Orr, Richard},
  title = {OpenAlex: A Fully-Open Index of Scholarly Works},
  journal = {arXiv preprint arXiv:2205.01833},
  year = {2022}
}
```

---

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Report Issues
- Found a bug? [Open an issue](https://github.com/karmanAiCr/openalex-ai-consumer-research/issues)
- Have a question? [Start a discussion](https://github.com/karmanAiCr/openalex-ai-consumer-research/discussions)

### Suggest Enhancements
- New features or analyses
- Improved documentation
- Additional examples

### Submit Pull Requests
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## 📜 License

### Code
This repository is licensed under the **MIT License** - see [LICENSE.txt](LICENSE.txt) for details.

### Data
Data extracted from OpenAlex is released under **CC0 (Public Domain)** - free to use, modify, and redistribute.

### Citation Requirement
While not legally required, we request that you:
1. Cite the original paper
2. Acknowledge OpenAlex as the data source
3. Reference this repository if used

---

## 🙏 Acknowledgments

- **OpenAlex team** for maintaining open bibliometric infrastructure
- **openalexR developers** (Massimo Aria, Trang Le, et al.) for the R interface
- **R Core Team** and tidyverse contributors
- **Reviewers** who improved our methodology
- **Community** for reporting issues and suggesting improvements

---

## 📞 Contact

- **Corresponding Author:** Dr Karman - karman.kaur@spjain.edu.au
- **Repository Maintainer:** karmanAiCr
- **Issues/Questions:** [GitHub Issues](https://github.com/karmanAiCr/openalex-ai-consumer-research/issues)

---

## 🔗 Related Resources

### Academic Paper
- **Paper DOI:** [Your DOI]
- **Preprint:** [ArXiv/SSRN link if available]
- **Supplementary Materials:** [Publisher link]

### Data & Tools
- **OpenAlex:** https://openalex.org/
- **OpenAlex Documentation:** https://docs.openalex.org/
- **openalexR Package:** https://docs.ropensci.org/openalexR/
- **Alternative Python Tool:** https://github.com/J535D165/pyalex

### Related Projects
- [Link to related repositories if any]
- [Link to follow-up studies if any]

---

## 📅 Version History

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

**Current Version:** 1.0.0 (December 2025)

---

## ⭐ Star This Repository

If you find this resource useful for your research, please consider:
- ⭐ Starring this repository
- 📢 Sharing with colleagues
- 📝 Citing in your publications

---

**Last Updated:** December 29, 2025  
**Repository:** https://github.com/karmanAiCr/openalex-ai-consumer-research  
**DOI:** 10.5281/zenodo.XXXXXXX  
**License:** MIT + CC0
