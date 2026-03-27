# Cybersecurity_Risk_Analysis [2014 - 2025]

# Cybersecurity Risk Analysis 2014–2025

## Overview
An end-to-end risk analysis of global cybersecurity incidents from 2014–2025 
using MySQL and Tableau. Built to demonstrate data analytics skills relevant 
to risk advisory work.

## Dashboard
[View Live Dashboard](https://public.tableau.com/views/Global_Cybersecurity_Risk_Analysis-MK/Dashboard1)

## Tools Used
- **MySQL** — schema design, data modelling (star schema)
- **Tableau** — interactive dashboard, choropleth map, risk matrix
- **Excel** — data profiling, data dictionary documentation

## Dataset
- Source: Kaggle — Global Cybersecurity Threats 2014–2025
- 10 columns, [insert your row count] incidents
- No null values detected across all columns

## Methodology
**Data Cleaning:** Profiled all columns in Excel, verified zero null entries, 
checked for duplicates and value consistency before import.

**Schema Design:** Designed a normalized star schema in MySQL with 6 dimension 
tables and 1 fact table to mirror enterprise data architecture.

**Dashboard:** Built 3 connected views in Tableau — an incident trend line, 
a global risk heatmap, and a sector risk matrix — with cross-filtering enabled.

## Risk Implications
- **Incident volatility:** Cybersecurity incidents peaked in 2017 and 2022, 
with a notable dip in 2019 potentially linked to GDPR enforcement effects
- **[Add finding from your sector risk matrix — which sector sits top right?]**
- **[Add finding about which country/region shows highest incident density]**
- **[Add one more finding you noticed in the data]**

## Skills Demonstrated
- MySQL: star schema design, DDL, foreign key constraints
- Tableau: choropleth maps, bubble charts, reference lines, cross-filtering
- Excel: data profiling, data dictionary documentation
