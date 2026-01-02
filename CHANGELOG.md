# Changelog

All notable changes to the OpenAlex Boolean Search script will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.0] - 2025-12-29

### Added
- Initial release of OpenAlex Boolean search script
- Corpus extraction for AI in consumer research (2015-June 2025)
- Boolean query construction with AI modality and consumer-facing terms
- Temporal growth analysis (CAGR calculation)
- Thematic categorization across 6 major themes
- Geographic distribution analysis
- Venue (journal) analysis
- ChatGPT catalyst impact analysis
- Comprehensive metadata extraction (authors, institutions, citations, concepts)
- CSV export functionality for all summary tables
- R workspace saving for further analysis
- Validation checks against reported statistics
- Detailed code comments and documentation

### Validated
- ✓ Total corpus size: 10,903 papers
- ✓ Growth trajectory: 156 (2015) → 2,634 (2024)
- ✓ CAGR: ~40%
- ✓ Fold increase: 16.9x
- ✓ Post-ChatGPT growth: 61.8%

### Dependencies
- R >= 4.0.0
- openalexR >= 1.3.0
- dplyr >= 1.1.0
- tidyr >= 1.3.0
- stringr >= 1.5.0
- lubridate >= 1.9.0
- jsonlite >= 1.8.0
- httr >= 1.4.0
- purrr >= 1.0.0

### Known Issues
- Minor corpus size variations (<2%) may occur due to OpenAlex database updates
- Thematic categorization uses keyword matching; manual validation recommended for edge cases
- Large corpus extraction may require 15-30 minutes depending on internet connection

---

## [Unreleased]

### Planned for Future Versions
- Integration with bibliometric visualization tools (e.g., VOSviewer, Bibliometrix)
- Enhanced thematic classification using machine learning
- Cross-database validation (comparison with Scopus, Web of Science)
- Author disambiguation and tracking
- Citation network analysis
- Co-authorship network visualization
- Temporal topic modeling
- Sentiment analysis on abstracts
- Disciplinary classification (Psychology, Marketing, HCI, Governance)
- AI role classification (Actor, Aid, Orchestrator)
- Automated supplementary materials generation

### Under Consideration
- Python version of the script (using pyalex)
- Jupyter notebook version for interactive analysis
- Shiny app for web-based corpus exploration
- Docker container for reproducible environment
- Integration with reference managers (Zotero, Mendeley)

---

## Version Numbering

- **Major version (X.0.0)**: Breaking changes to script structure or output format
- **Minor version (0.X.0)**: New features or substantial enhancements
- **Patch version (0.0.X)**: Bug fixes, documentation updates, minor tweaks

---

## How to Contribute

If you identify bugs, have suggestions for improvements, or want to contribute code:

1. **Report issues**: [karmanAiCr/contact info]
2. **Suggest features**: [karman.kaur@spjain.edu.au]
3. **Submit improvements**: [Your repository URL if applicable]

---

## Citation Updates

When citing different versions:

**Version 1.0.0:**
```
[Authors]. (2025). Supplementary Materials: OpenAlex Boolean Search Script 
for AI in Consumer Research Corpus (Version 1.0.0). [URL]. 
https://doi.org/[DOI if available]
```

---

## Acknowledgments

We thank:
- OpenAlex team for maintaining open bibliometric infrastructure
- openalexR package developers for R API interface
- Reviewers who provided feedback on the methodology
- Early adopters who helped identify bugs

---

**Maintained by:** [Dr Karman Chadha/SP Jain School of Global Management]  
**Contact:** [karman.kaur@spjain.edu.au]  
**Last Updated:** December 29, 2025
