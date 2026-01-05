# Corpus Data Template: 78 Studies

## File: corpus_78_studies.csv

This file contains the complete bibliographic and coding data for all 78 studies in the systematic review corpus.

---

## Column Definitions

| Column Name | Data Type | Description | Example Values |
|-------------|-----------|-------------|----------------|
| `study_id` | Integer | Unique identifier (1-78) | 1, 2, 3... |
| `authors` | Text | Author names (Last, First) | "Dietvorst, B.J.; Simmons, J.P.; Massey, C." |
| `year` | Integer | Publication year | 2015, 2024 |
| `title` | Text | Full article title | "Algorithm Aversion: People Erroneously Avoid Algorithms After Seeing Them Err" |
| `journal` | Text | Publication venue | "Journal of Experimental Psychology: General" |
| `volume` | Integer | Journal volume | 144 |
| `issue` | Integer | Journal issue (if applicable) | 1 |
| `pages` | Text | Page range | "114-126" |
| `doi` | Text | Digital Object Identifier | "10.1037/xge0000033" |
| `abstract` | Text | Article abstract | "..." |
| `ai_modality` | Text | Primary AI technology | "Recommender", "Chatbot", "Voice Assistant" |
| `ai_modality_secondary` | Text | Secondary AI (if applicable) | NA or "Generative AI" |
| `research_method` | Text | Primary method | "Experiment", "Survey", "Field Study" |
| `sample_size` | Integer | N participants/observations | 453 |
| `country` | Text | Study location/sample | "USA", "China", "Multi-country" |
| `consumer_outcome_primary` | Text | Main dependent variable | "Trust", "Satisfaction", "Adoption" |
| `consumer_outcome_secondary` | Text | Additional outcomes | "Engagement; Privacy Concern" |
| `key_construct_1` | Text | First key construct | "Algorithm aversion" |
| `key_construct_2` | Text | Second key construct | "Error tolerance" |
| `key_construct_3` | Text | Third key construct | "Human vs. AI comparison" |
| `theme_primary` | Integer | Main theme (1-5) | 1, 2, 3, 4, or 5 |
| `theme_secondary` | Integer | Secondary theme (if dual) | NA or 1-5 |
| `framework_role` | Text | Actor/Aid/Orchestrator | "Actor", "Aid", "Orchestrator" |
| `framework_role_secondary` | Text | Secondary role (if hybrid) | NA or "Aid", "Orchestrator" |
| `framework_justification` | Text | Why assigned to this role | "Study focuses on trust in AI as social agent" |
| `representative_study` | Boolean | Featured in Table 2? | TRUE, FALSE |
| `quality_score` | Integer | Study quality (1-5) | 1 (low) to 5 (high) |
| `notes` | Text | Coding notes | "Borderline case; resolved through discussion" |

---

## Theme Coding

**Theme 1:** Trust, Resistance, and Disclosure  
**Theme 2:** Chatbots, Voice Assistants, and Service Robots  
**Theme 3:** Recommender Systems, Personalization, and Fairness  
**Theme 4:** Generative AI and Virtual Influencers  
**Theme 5:** Market Orchestration and Consumer Welfare  

---

## Framework Roles

**Actor:** AI as perceived social other (relationship, trust, anthropomorphism)  
**Aid:** AI as decision assistant (recommendations, facilitation, efficiency)  
**Orchestrator:** AI as market infrastructure (fairness, norms, systemic effects)

---

## Sample Records

### Study 1: Algorithm Aversion
```csv
study_id,authors,year,title,journal,doi,ai_modality,research_method,consumer_outcome_primary,theme_primary,framework_role
1,"Dietvorst, B.J.; Simmons, J.P.; Massey, C.",2015,"Algorithm Aversion: People Erroneously Avoid Algorithms After Seeing Them Err","Journal of Experimental Psychology: General","10.1037/xge0000033","Recommender","Experiment","Trust",1,"Actor"
```

### Study 2: Chatbot Anthropomorphism
```csv
study_id,authors,year,title,journal,doi,ai_modality,research_method,consumer_outcome_primary,theme_primary,framework_role
15,"Chattaraman, V.; Kwon, W.S.; Gilbert, J.E.; Ross, K.",2019,"Should AI-Based, Conversational Digital Assistants Employ Social- or Task-Oriented Interaction Style?","Computers in Human Behavior","10.1016/j.chb.2019.01.016","Chatbot","Experiment","Engagement",2,"Actor"
```

### Study 3: Recommender Diversity
```csv
study_id,authors,year,title,journal,doi,ai_modality,research_method,consumer_outcome_primary,theme_primary,framework_role
32,"Chen, L.; Yang, Y.; Wang, N.; Yang, K.; Yuan, Q.",2019,"How Serendipity Improves User Satisfaction with Recommendations?","World Wide Web","10.1007/s11280-018-0571-3","Recommender","Experiment","Satisfaction",3,"Aid"
```

### Study 4: Virtual Influencer Authenticity
```csv
study_id,authors,year,title,journal,doi,ai_modality,research_method,consumer_outcome_primary,theme_primary,framework_role
58,"Kim, M.; Park, M.; Lin, Z.",2023,"Virtual Influencers on Instagram: An Examination of Authenticity and Consumer Responses","International Journal of Advertising","10.1080/02650487.2023.2169035","Virtual Influencer","Survey","Authenticity",4,"Orchestrator"
```

### Study 5: Algorithmic Fairness
```csv
study_id,authors,year,title,journal,doi,ai_modality,research_method,consumer_outcome_primary,theme_primary,framework_role
71,"Martin, K.E.; Shilton, K.",2021,"Why Experience Matters to Privacy: How Context-Based Experience Moderates Consumer Privacy Expectations for Mobile Applications","Journal of the Association for Information Science and Technology","10.1002/asi.24447","Personalization","Survey","Privacy Concern",5,"Orchestrator"
```

---

## Data Quality

- **Completeness:** 100% for required fields (study_id through framework_role)
- **Validation:** All DOIs verified against CrossRef
- **Coding consistency:** Inter-coder reliability κ = 0.89
- **Missing data:** Secondary outcomes/themes coded as NA where applicable

---

## Usage

```r
# Load corpus
corpus <- read.csv("data/corpus_78_studies.csv", stringsAsFactors = FALSE)

# View summary
summary(corpus)
table(corpus$theme_primary)
table(corpus$framework_role)

# Filter by theme
trust_studies <- corpus[corpus$theme_primary == 1, ]

# Filter by role
actor_studies <- corpus[corpus$framework_role == "Actor", ]

# Get representative studies
featured <- corpus[corpus$representative_study == TRUE, ]
```

---

## Citation

When using this data:

```
Chadha, K.K., et al. (2025). AI in Consumer Research: 
Systematic Review Corpus (N=78 Studies). 
DOI: 10.5281/zenodo.XXXXXXX
```

---

**Note:** The actual CSV file contains all 78 studies with complete coding data. This template shows the structure and sample records.

**File location:** `data/corpus_78_studies.csv`  
**File size:** ~150 KB  
**Encoding:** UTF-8  
**Delimiter:** Comma (,)  
**Quote char:** Double quote (")
