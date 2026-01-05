# GitHub Repository Setup Guide
## Systematic Review Corpus (78 Studies)

This guide will help you create and publish the systematic review repository.

---

## 📋 Quick Overview

**What you're creating:**
- Repository for 78-study systematic review corpus
- Thematic analysis data (5 themes)
- Actor-Aid-Orchestrator framework mapping
- PRISMA 2020 compliant documentation

**Repository name:** `ai-consumer-systematic-review`

---

## 🚀 Step-by-Step Setup

### Step 1: Create GitHub Repository

1. Go to: https://github.com/new
2. Fill in:
   - **Repository name:** `ai-consumer-systematic-review`
   - **Description:** `Systematic review corpus: 78 empirical studies on AI in consumer research (2015-2025)`
   - **Visibility:** Public ✓
   - **Add README:** Yes ✓
   - **.gitignore:** R ✓
   - **License:** CC-BY-4.0 ✓
3. Click "Create repository"

---

### Step 2: Add Repository Topics

1. On your repository page, click ⚙️ (gear icon) in "About" section
2. Add these topics:
   ```
   systematic-review
   prisma
   thematic-analysis
   consumer-research
   artificial-intelligence
   literature-review
   actor-aid-orchestrator
   boundary-spanning-review
   ```
3. Click "Save changes"

---

### Step 3: Upload Files

**Option A: Via GitHub Web Interface**

1. Click "Add file" → "Upload files"
2. Drag and drop all files from the package
3. Commit message: "Initial commit: Systematic review corpus (N=78)"
4. Click "Commit changes"

**Option B: Via Git Commands**

```bash
# Clone repository
cd ~/Documents
git clone https://github.com/karmanAiCr/ai-consumer-systematic-review.git
cd ai-consumer-systematic-review

# Copy files from package
# (Extract the ZIP and copy all folders/files)

# Add and commit
git add .
git commit -m "Initial commit: Systematic review corpus and documentation"
git push origin main
```

---

### Step 4: Create Data Files

You need to create the actual corpus CSV files. Here's the structure:

**File 1: `data/corpus_78_studies.csv`**

Include these columns for all 78 studies:
- study_id (1-78)
- authors
- year
- title
- journal
- doi
- ai_modality
- research_method
- consumer_outcome_primary
- theme_primary (1-5)
- framework_role (Actor/Aid/Orchestrator)

**File 2: `data/theme_classifications.csv`**

Theme coding with justifications:
- study_id
- theme_primary
- theme_secondary (if applicable)
- coding_justification
- coder_initials
- audit_approved (yes/no)

**File 3: `data/actor_aid_orchestrator_mapping.csv`**

Framework role assignments:
- study_id
- framework_role_primary
- framework_role_secondary (if hybrid)
- role_justification
- key_constructs
- representative_quotes

---

### Step 5: Customize Files

Replace these placeholders in README.md and other files:

| Find | Replace With |
|------|--------------|
| `[Co-authors]` | Your co-author names |
| `[Journal Name]` | Target journal |
| `[your.email@institution.edu]` | Your email |
| `[Your University]` | Your institution |
| `XXXXXXX` | Actual Zenodo DOI (after Step 7) |

---

### Step 6: Create Release (v1.0.0)

1. On repository page, click "Releases"
2. Click "Create a new release"
3. **Tag version:** `v1.0.0`
4. **Release title:** `Version 1.0.0 - Initial Corpus Release`
5. **Description:**
```markdown
## Systematic Review Corpus Release

Initial public release of the 78-study corpus for our boundary-spanning review of AI in consumer research.

### 📊 Corpus Statistics
- **Studies:** 78 empirical papers
- **Time period:** 2015-2025
- **Databases:** OpenAlex, Dimensions, Scopus
- **Themes:** 5 major clusters
- **Framework:** Actor-Aid-Orchestrator

### 📁 What's Included
- Complete study corpus (CSV)
- Theme classifications
- Framework role mappings
- PRISMA flow diagram
- Search protocol
- Coding manual
- Analysis scripts

### 🎯 Five Themes
1. Trust, Resistance, and Disclosure (23.1%)
2. Chatbots and Voice Assistants (19.2%)
3. Recommender Systems (25.6%)
4. Generative AI (15.4%)
5. Market Orchestration (16.7%)

### 🎭 Framework Roles
- Actor: 33 studies (42.3%)
- Aid: 20 studies (25.6%)
- Orchestrator: 25 studies (32.1%)

### 📚 Citation
[Your citation here]

### 🔍 Reproducibility
All coding data, screening decisions, and analysis code included.
```
6. Click "Publish release"

---

### Step 7: Get Zenodo DOI

1. Go to: https://zenodo.org/
2. Sign in with GitHub
3. Go to: https://zenodo.org/account/settings/github/
4. Find `ai-consumer-systematic-review`
5. Toggle it **ON**
6. Zenodo will detect your v1.0.0 release
7. Get DOI (format: `10.5281/zenodo.XXXXXXX`)

---

### Step 8: Update README with DOI

```bash
# Edit README.md
# Replace XXXXXXX with actual DOI

git add README.md
git commit -m "Add Zenodo DOI"
git push
```

---

## 📊 Repository Structure Check

After setup, your repository should have:

```
ai-consumer-systematic-review/
├── README.md ✓
├── LICENSE ✓
├── .gitignore ✓
├── data/
│   ├── corpus_78_studies.csv ✓
│   ├── theme_classifications.csv ✓
│   └── actor_aid_orchestrator_mapping.csv ✓
├── docs/
│   ├── PRISMA_FLOWCHART.md ✓
│   ├── SEARCH_PROTOCOL.md ✓
│   ├── SCREENING_CRITERIA.md ✓
│   └── CODING_MANUAL.md ✓
├── analysis/
│   ├── descriptive_statistics.R ✓
│   └── theme_distribution.R ✓
└── examples/
    └── visualizations.R ✓
```

---

## ✅ Verification Checklist

Before going live, verify:

- [ ] Repository is public
- [ ] README displays correctly
- [ ] All data files uploaded
- [ ] Topics added (8 topics)
- [ ] License is CC-BY-4.0
- [ ] Release v1.0.0 created
- [ ] Zenodo DOI obtained
- [ ] DOI badge added to README
- [ ] No placeholders remaining
- [ ] Can clone and access files

---

## 🔗 Link to Main Corpus Repository

Add cross-reference in README:

```markdown
## Related Repository

This systematic review corpus (N=78) is a curated subset of our larger 
OpenAlex extraction (N=10,903):

https://github.com/karmanAiCr/openalex-ai-consumer-research
DOI: 10.5281/zenodo.18123218
```

---

## 📝 For Your Paper

Include this in your Methods section:

```
The final corpus of 78 studies, including complete coding data, 
theme classifications, and framework mappings, is publicly available 
at https://github.com/karmanAiCr/ai-consumer-systematic-review 
(DOI: 10.5281/zenodo.XXXXXXX).
```

---

## 🎯 Next Steps After Publishing

1. **Share on social media** (Twitter/X, LinkedIn)
2. **Email to domain experts** for feedback
3. **Submit paper** with repository links
4. **Monitor for issues** on GitHub
5. **Update annually** with new studies

---

## 📧 Support

If you get stuck:
- **Check:** Complete Setup Guide (this file)
- **Reference:** openalex-ai-consumer-research repo (you already did this)
- **Ask:** Open issue on GitHub

---

**Estimated time:** 30-60 minutes  
**Difficulty:** Moderate (you've done this before!)  
**Payoff:** Professional, citable, reproducible research 🎉

---

**Created:** January 2026  
**For:** Systematic Review Corpus Repository  
**Author:** karmanAiCr
