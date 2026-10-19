# EduPath India — Engineering College Analytics Dashboard

An interactive Power BI dashboard that analyses 8 years (2018–2025) of JEE counselling (JoSAA) cutoffs and NIRF-based data on private engineering colleges, to help students compare institutes, branches and categories.

## Dashboard Pages

| Page | What it shows |
|------|---------------|
| Home | Key totals: 154 institutes, 188 B.Tech programs, 362 private colleges |
| JEE Analysis | Hardest institutes and branches, IIT vs NIT gap, seat availability trend |
| Cutoff Trends | Year-wise, round-wise and category-wise closing ranks, with slicers for branch, category and institute type |
| Private Colleges | Top colleges by placement score, fees vs placement, state-wise distribution |
| Comparator | Side-by-side comparison of any two institutes (OPEN category, CSE) |

## Screenshots

![Home](1-home.png)
![JEE Analysis](2-jee-analysis.png)
![Cutoff Trends](3-cutoff-trends.png)
![Private Colleges](4-private-colleges.png)
![Comparator](5-comparator.png)

## Key Insights

- AI & Data Analytics is the hardest B.Tech branch to get into (average closing rank near 0.3K).
- IIT Bombay's average closing rank is about 12x lower than the NIT average; the IIT–NIT gap stayed wide across 2018–2025.
- OPEN-category closing ranks are over 10x higher than ST.
- Total B.Tech seats dipped in 2021, then recovered to a peak in 2025.
- Among private colleges, higher fees do not guarantee better placement scores.

## Data Preparation

- Analysis limited to B.Tech programs (370K+ cutoff records).
- Removed non-engineering institutes and colleges with missing placement data from the private college set (362 colleges remain).
- Comparator uses the 4-year Computer Science and Engineering program, OPEN seat type.

## Tools

Power BI, DAX, Power Query

## Files

- `edupath_final.pbix` — the Power BI report
- `EduPath_India_Dashboard.pdf` — PDF export of all pages
