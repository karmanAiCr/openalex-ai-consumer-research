# Contributing to OpenAlex AI Consumer Research Corpus

Thank you for your interest in contributing! This document provides guidelines for contributing to this project.

---

## 🎯 Ways to Contribute

### 1. Report Bugs 🐛
Found a bug? Please [open an issue](https://github.com/karmanAiCr/openalex-ai-consumer-research/issues) with:
- Clear description of the problem
- Steps to reproduce
- Expected vs. actual behavior
- Your R version and package versions
- Error messages (if any)

### 2. Suggest Enhancements 💡
Have ideas for improvements? [Open an issue](https://github.com/karmanAiCr/openalex-ai-consumer-research/issues) labeled "enhancement" with:
- Clear description of the feature
- Use case or motivation
- Example of how it would work
- Any relevant references

### 3. Improve Documentation 📚
Documentation improvements are always welcome:
- Fix typos or unclear explanations
- Add examples or use cases
- Improve installation instructions
- Translate documentation (if applicable)

### 4. Add Code 💻
Code contributions should:
- Follow existing code style
- Include comments
- Be tested on your local machine
- Include documentation updates if needed

---

## 🚀 Getting Started

### Prerequisites
- R (>= 4.0.0)
- Git
- GitHub account
- Basic knowledge of R programming

### Setup Development Environment

```bash
# 1. Fork the repository on GitHub

# 2. Clone your fork
git clone https://github.com/karmanAiCr/openalex-ai-consumer-research.git
cd openalex-ai-consumer-research

# 3. Add upstream remote
git remote add upstream https://github.com/[OriginalAuthor]/openalex-ai-consumer-research.git

# 4. Create a branch for your work
git checkout -b feature/your-feature-name
```

### Install Dependencies

```r
# Install required packages
install.packages(c(
  "openalexR", "dplyr", "tidyr", "stringr",
  "lubridate", "jsonlite", "httr", "purrr"
))
```

---

## 📝 Contribution Workflow

### 1. Before You Start
- Check existing [issues](https://github.com/karmanAiCr/openalex-ai-consumer-research/issues) to avoid duplicates
- Discuss major changes by opening an issue first
- Make sure you're working on the latest code

### 2. Make Your Changes

```r
# Test your changes
source("openalex_ai_consumer_search.R")

# Verify output matches expected results
# Check for errors or warnings
```

### 3. Commit Your Changes

```bash
# Stage your changes
git add .

# Commit with descriptive message
git commit -m "Add feature: [brief description]"

# Example commit messages:
# "Fix bug in temporal analysis calculation"
# "Add visualization example for geographic distribution"
# "Update documentation for thematic categorization"
```

### 4. Push and Create Pull Request

```bash
# Push to your fork
git push origin feature/your-feature-name

# Go to GitHub and create a Pull Request
```

---

## ✅ Code Guidelines

### R Style Guide

Follow [tidyverse style guide](https://style.tidyverse.org/):

```r
# Good
calculate_cagr <- function(start_value, end_value, years) {
  ((end_value / start_value)^(1 / years) - 1) * 100
}

# Bad
calculateCAGR<-function(start.value,end.value,years){((end.value/start.value)^(1/years)-1)*100}
```

### Code Standards

- **Comments:** Add comments for complex logic
- **Naming:** Use descriptive variable names
- **Functions:** One function, one purpose
- **Error Handling:** Use `tryCatch()` for operations that might fail
- **Validation:** Check inputs and outputs

### Example

```r
# Good: Clear, commented, validated
extract_first_author <- function(authorships) {
  # Check if authorships list is empty
  if (length(authorships) == 0) {
    return(NA_character_)
  }
  
  # Extract first author's display name
  first_author <- authorships[[1]]$author$display_name
  
  # Validate result
  if (is.null(first_author) || first_author == "") {
    return(NA_character_)
  }
  
  return(first_author)
}

# Bad: No comments, no validation, unclear
get_auth <- function(a) {
  a[[1]]$author$display_name
}
```

---

## 🧪 Testing

### Before Submitting

Test your changes thoroughly:

1. **Run the script:** Ensure it completes without errors
2. **Check output:** Verify CSV files are created correctly
3. **Validate results:** Compare against expected statistics
4. **Test edge cases:** Empty results, API errors, etc.

### Validation Checklist

- [ ] Script runs without errors
- [ ] Output directory is created
- [ ] All CSV files are generated
- [ ] Corpus size is reasonable (~10,903 ±100)
- [ ] No warnings or deprecation messages
- [ ] Documentation is updated if needed

---

## 📚 Documentation Guidelines

### Code Documentation

- Add comments for complex logic
- Document function parameters and return values
- Include examples where helpful

```r
#' Calculate Compound Annual Growth Rate (CAGR)
#'
#' @param start_value Numeric. Initial value
#' @param end_value Numeric. Final value
#' @param years Numeric. Number of years between values
#' @return Numeric. CAGR as percentage
#' @examples
#' calculate_cagr(156, 2634, 9)  # Returns ~39.7
calculate_cagr <- function(start_value, end_value, years) {
  ((end_value / start_value)^(1 / years) - 1) * 100
}
```

### README Updates

If your change affects usage:
- Update relevant README sections
- Add examples if introducing new features
- Update expected output if results change

---

## 🔄 Pull Request Process

### PR Checklist

Before submitting, ensure:

- [ ] Code follows style guidelines
- [ ] All tests pass
- [ ] Documentation is updated
- [ ] Commit messages are clear
- [ ] Branch is up to date with main

### PR Template

When creating a PR, include:

```markdown
## Description
[Brief description of changes]

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement
- [ ] Other (specify)

## Testing
[Describe how you tested your changes]

## Related Issues
Fixes #[issue number]

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] No new warnings generated
```

### Review Process

1. **Automated checks:** GitHub Actions runs tests
2. **Code review:** Maintainer reviews code
3. **Feedback:** Address any comments
4. **Approval:** Maintainer approves PR
5. **Merge:** PR is merged into main branch

---

## 🎨 Types of Contributions

### Priority Areas

We especially welcome contributions in these areas:

1. **Visualization enhancements**
   - Additional plots and charts
   - Interactive visualizations
   - Network analysis graphs

2. **Analysis extensions**
   - Topic modeling
   - Sentiment analysis
   - Citation network analysis
   - Co-authorship networks

3. **Performance improvements**
   - Faster data processing
   - Reduced memory usage
   - Parallel processing

4. **Documentation**
   - Tutorial videos
   - Worked examples
   - Use case documentation
   - Translation to other languages

5. **Integration**
   - Shiny app development
   - Integration with other tools
   - Python version (using pyalex)
   - Jupyter notebook version

---

## 🐞 Bug Reports

### What to Include

**Minimal Reproducible Example:**
```r
# Your code here
# Include minimal data that reproduces the bug
```

**System Information:**
```r
sessionInfo()
```

**Error Message:**
```
[Copy exact error message here]
```

---

## 💬 Discussion Guidelines

### Code of Conduct

- Be respectful and professional
- Welcome newcomers
- Focus on ideas, not people
- Assume good intentions
- Provide constructive feedback

### Where to Discuss

- **Bug reports:** [Issues](https://github.com/karmanAiCr/openalex-ai-consumer-research/issues)
- **Feature requests:** [Issues](https://github.com/karmanAiCr/openalex-ai-consumer-research/issues)
- **Questions:** [Discussions](https://github.com/karmanAiCr/openalex-ai-consumer-research/discussions)
- **General chat:** [Discussions](https://github.com/karmanAiCr/openalex-ai-consumer-research/discussions)

---

## 🏆 Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md
- Acknowledged in release notes
- Mentioned in academic publications (for substantial contributions)

---

## 📧 Contact

Questions about contributing?
- **Email:** [karman.kaur@spjain.edu.au]
- **GitHub Issues:** [Link to issues]
- **Twitter/X:** [@YourHandle] (if applicable)

---

## 📜 License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to open science! 🌟
