# Repository Customization Checklist

Before pushing to GitHub, customize these files with your actual information.

---

## 📝 Required Changes

### 1. README.md

**Line 1:** Update DOI badge (after getting Zenodo DOI)
```markdown
Current: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.XXXXXXX.svg)]
Replace: With your actual Zenodo DOI
```

**Throughout file:**
- [ ] Replace `[karmanAiCr]` → `karmanAiCr`
- [ ] Replace `[Dr Karman Chadha]` → Your actual name
- [ ] Replace `[karman.kaur@spjain.edu.au]` → Your actual email
- [ ] Replace `[Vik Naidoo and Karman Kaur Chadha and Rajat Roy and Ronnie Das]` → Your full author list
- [ ] Replace `[Journal]` → Journal name (or "Under Review")
- [ ] Replace `[Volume]`, `[Pages]`, `[DOI]` → Actual values or "TBD"

### 2. CITATION.bib

**Lines 3-10:** Update paper citation
```bibtex
author = {Vik Naidoo and Karman Kaur Chadha and Rajat Roy and Ronnie Das},
title = {Artificial Intelligence in Consumer Research: A Boundary-Spanning Review},
journal = {Journal of Marketing Research},  # Or your actual journal
year = {2025},
volume = {XX},
pages = {XXX-XXX},
doi = {10.XXXX/XXXXX}
```

**Lines 14-20:** Update repository citation
```bibtex
author = {Same authors as above},
url = {https://github.com/karmanAiCr/openalex-ai-consumer-research},
doi = {10.5281/zenodo.XXXXXXX}  # Update after Zenodo
```

### 3. openalex_ai_consumer_search.R

**Line 20:** Add your email (REQUIRED for API access)
```r
Current: options(openalexR.mailto = "your.email@institution.edu")
Replace: options(openalexR.mailto = "karman.kaur@spjain.edu.au")
```

### 4. LICENSE.txt

**Line 3:** Add your name/institution
```
Current: Copyright (c) 2025 [Your Name(s)/Institution]
Replace: Copyright (c) 2025 Dr Karman Chadha, SP Jain School of Global Management
```

**Line 63:** Add your email
```
Current: For questions about this license, contact: [Your email]
Replace: For questions about this license, contact: karman.kaur@spjain.edu.au
```

### 5. CONTRIBUTING.md

**Throughout:**
- [ ] Replace `[YourUsername]` → `karmanAiCr`
- [ ] Replace `[your.email@institution.edu]` → Your actual email
- [ ] Replace `[OriginalAuthor]` → `karmanAiCr` (in line 34)

### 6. CHANGELOG.md

**Line 42:** Add maintainer info
```
Current: **Maintained by:** [Your name/institution]
Replace: **Maintained by:** Your Name, Your University

Current: **Contact:** [Your email]
Replace: **Contact:** your.email@edu
```

### 7. examples/basic_usage.R

**Line 14:** Add your email
```r
Current: options(openalexR.mailto = "your.email@institution.edu")
Replace: options(openalexR.mailto = "your.actual@email.edu")
```

### 8. docs/QUICKSTART.md

**Last section (line ~90):**
- [ ] Replace `[your.email@institution.edu]` → Your actual email

---

## ✅ Quick Find & Replace

Use your text editor's "Find in Files" feature:

### Search and Replace These:

| Find | Replace With |
|------|--------------|
| `[YourUsername]` | `karmanAiCr` |
| `[Your Name]` | Your actual name |
| `[your.email@institution.edu]` | Your actual email |
| `your.email@institution.edu` | Your actual email |
| `[Authors]` | Full author list |
| `[Journal]` | Journal name or "TBD" |

---

## 🔍 Verification Checklist

Before pushing, verify:

- [ ] Email set in openalex_ai_consumer_search.R (line 20)
- [ ] Email set in examples/basic_usage.R (line 14)
- [ ] Author names in CITATION.bib
- [ ] Author names in README.md
- [ ] Username changed from `[YourUsername]` to `karmanAiCr` everywhere
- [ ] Copyright notice has your name (LICENSE.txt line 3)
- [ ] Contact email in multiple files
- [ ] No remaining `[Square Brackets]` placeholders

---

## 🚀 After Zenodo DOI

Once you get your Zenodo DOI (e.g., `10.5281/zenodo.1234567`):

### Update These Files:

**README.md - Line 1:**
```markdown
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1234567.svg)](https://doi.org/10.5281/zenodo.1234567)
```

**README.md - Line 356 (footer):**
```
**DOI:** 10.5281/zenodo.1234567
```

**CITATION.bib - Line 20:**
```bibtex
doi = {10.5281/zenodo.1234567}
```

### Then Push Update:
```bash
git add README.md CITATION.bib
git commit -m "Add Zenodo DOI"
git push
```

---

## 📊 Corpus Statistics Reference

Your paper states these numbers - verify they match in README:

| Statistic | Value |
|-----------|-------|
| Total papers | 10,903 |
| Start year | 2015 (156 papers) |
| End year | 2024 (2,634 papers) |
| Partial year | June 2025 (1,633 papers) |
| Fold increase | 16.9x |
| CAGR | ~40% |

These are already correct in README.md - no changes needed.

---

## ✨ Optional Enhancements

### Add Your Profile Photo

1. Go to: https://github.com/settings/profile
2. Upload a professional photo
3. This will appear on your repository

### Add Institutional Affiliation

In README.md, you can add:
```markdown
**Affiliation:** Department of Marketing, University Name
```

### Add ORCID

If you have an ORCID iD:
```markdown
**ORCID:** https://orcid.org/0000-0000-0000-0000
```

---

## 🎯 Final Check Command

Run this in terminal to check for remaining placeholders:

```bash
cd /path/to/repository
grep -r "\[Your" .
grep -r "\[Authors\]" .
grep -r "your.email@institution.edu" .
grep -r "XXXXXXX" .
```

If any results appear, you have placeholders to replace!

---

**Completed customization?** Check off this master list:

- [ ] All emails replaced with actual email
- [ ] All `[YourUsername]` replaced with `karmanAiCr`
- [ ] All `[Your Name]` replaced with actual name(s)
- [ ] Author list added to CITATION.bib
- [ ] Copyright notice updated in LICENSE.txt
- [ ] Journal name added (or marked "TBD")
- [ ] No remaining square bracket placeholders
- [ ] Tested R script runs (email set correctly)

✅ Ready to push to GitHub!
