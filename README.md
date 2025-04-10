 🏆 Oscar Awards Analysis (1929-2023)

📌 Project Overview
This data analysis project explores 94 years of Oscar Award history to uncover trends in nominations, wins, and industry patterns. Using Power BI and SQL, I've transformed raw Oscar data into interactive dashboards that reveal:

- Which films/actors dominated the awards
- Gender disparities in nominations and wins
- How award patterns evolved over decades

📊 Dashboard Highlights
🎯 Oscar Dashboard (Overview)
![Image alt](https://github.com/YakymivLuybomyr/oscar_awards_analysis/blob/main/data/D.O_1.png)

Historical Trends: Visualizes nomination patterns from 1920-2020 with clear peaks and valleys

Top Performers:

Katharine Hepburn leads with 4 acting wins

"Titanic" and "Ben-Hur" tie for most film wins (12 Oscars each)

Key Insight: The 1960s-1990s were the golden age for major Oscar sweeps

📈 Nomination Ratios
![Image alt](https://github.com/YakymivLuybomyr/oscar_awards_analysis/blob/main/data/D.O_%202.png)
Film Efficiency: Shows conversion rates from nominations to wins

Perfect converters: "Gigi", "The Last Emperor" (9/9)

High-volume nominees: "West Side Story" (11 wins from 18 noms)

Actor Performance:

Meryl Streep's unmatched 21 nominations

Contrasts like Glenn Close (8 noms, 0 wins) vs Hepburn (12 noms, 4 wins)

🏅 Category Breakdown
![Image alt](https://github.com/YakymivLuybomyr/oscar_awards_analysis/blob/main/data/D.O_3.png)

Win Distribution: Reveals 83% of Oscars go to non-acting categories

Competitive Edge:

Directing has 20.3% win rate (95/469)

Best Picture is most selective (16.7% win rate)

Gender Lens: Acting categories show nearly identical win rates (8.4%)

🔍 Key Insights from Data
 🎬 Film Analysis
- **Most awarded film**: *[Film Name]* with [X] wins (1950)
- **Biggest nomination-to-win gap**: *[Film Name]* (14 noms, 0 wins)
- **Best conversion rate**: *Lord of the Rings: Return of the King* (11/11 wins)

 🎭 Acting Categories
| Metric               | Actors | Actresses |
|----------------------|--------|-----------|
| Most nominations     | Jack Nicholson (12) | Meryl Streep (21) |
| Highest win rate     | Daniel Day-Lewis (50%) | Katharine Hepburn (100%) |
| Longest Oscar wait   | [Name] (36 years) | [Name] (42 years) |

 📅 Historical Trends
- **Most competitive decade**: 1990s (32% of all awards)
- **Category with lowest win rate**: Best Actor (14%)
- **Recent shift**: More genre films winning post-2010

 🛠 Technical Implementation
 📂 Data Pipeline
1. **Source**: the_oscar_award.csv
2. **Cleaning**: Power Query (removed duplicates, added gender column)
3. **Analysis**: 5 Power BI dashboards with DAX measures
4. **Visualization**: Interactive reports with drill-down capabilities

💻 Technologies Used
- **Power BI** (Data modeling, DAX, visualization)
- **SQL** (Data transformation queries)
- **Python** (Optional: data cleaning script)

