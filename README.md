# Cybersecurity Risk Analysis 2014–2025

## Overview
An end-to-end risk analysis of global cybersecurity incidents from 2014–2025 
using MySQL and Tableau. Built to demonstrate data analytics skills relevant 
to risk advisory work.

## Dashboard
[View Live Dashboard](https://public.tableau.com/views/Global_Cybersecurity_Risk_Analysis-MK/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Tools Used
- **MySQL** — schema design, data modelling (star schema)
- **Tableau** — interactive dashboard, choropleth map, risk matrix
- **Excel** — data profiling, data dictionary documentation

## Dataset
- Source: Kaggle — Global Cybersecurity Threats 2014–2025
- 10 columns, 3000 incidents
- No null values detected across all columns

## Methodology
**Data Cleaning:** Profiled all columns in Excel, verified zero null entries,
checked for duplicates and value consistency before import. Findings documented
in a data dictionary (see /data/data_dictionary.xlsx).

**Schema Design:** Designed a normalized star schema in MySQL with 6 dimension 
tables and 1 fact table to mirror enterprise data architecture.

**Dashboard:** Built 3 connected views in Tableau — an incident trend line, 
a global risk heatmap, and a sector risk matrix.

## Risk Implications
- **Incident volatility:** Cybersecurity incidents peaked in 2017 and 2022, with a notable dip in 2019 potentially linked to GDPR enforcement effects.

- **IT and Banking face critical exposure:** Both sectors sit in the top-right quadrant of the risk matrix, indicating high incident frequency AND high average financial loss. These sectors warrant priority controls assessment and more
frequent risk monitoring relative to others.

- **Incident frequency does not equal financial impact:** The UK, Brazil, India, and Japan each recorded 300+ incidents over the decade — the highest frequency globally — yet countries with lower incident counts carry higher financial losses. The US and Australia (~200 incidents each) average ~$51M in losses, and Germany — despite lower incident frequency — recorded the highest average financial impact at $54.2M. This suggests that incident volume is a poor standalone proxy for risk exposure and that loss severity must be assessed independently.
 
- **Education and Retail are comparatively lower risk:** Both sectors show low incident frequency and lower financial impact, placing them in the lower-risk quadrant. However this should not be interpreted as absence of risk — it may
reflect underreporting or less mature detection capabilities.

- **Healthcare is an emerging risk:** Healthcare shows above-average incident frequency while financial impact remains relatively contained. This pattern warrants monitoring — increasing frequency without a corresponding loss spike
may indicate attacks are growing in volume before their financial consequences are fully realised.

- **Government and Telecommunications show a high-impact, low-frequency profile:** These sectors experience fewer incidents but disproportionately high financial consequences when breaches do occur. This profile is consistent with
high-value targets where a single incident carries significant downstream cost.

## Repository Structure
```
cybersecurity-risk-analysis/
├── README.md
├── data/
│   └── data_dictionary.xlsx
└── sql/
    └── 01_schema_ddl.sql
```

## Skills Demonstrated
- MySQL: star schema design, DDL, foreign key constraints
- Tableau: choropleth maps, bubble charts, reference lines, cross-filtering
- Excel: data profiling, data dictionary documentation
