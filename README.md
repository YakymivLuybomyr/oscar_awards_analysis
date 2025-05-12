🎬 Oscar Awards Analysis (1929–2023)

Interactive visualization and deep analysis of the Academy Awards history from 1929 to 2023, covering nomination trends, winners, gender disparities, and film performance efficiency.

![Image alt](https://github.com/YakymivLuybomyr/oscar_awards_analysis/blob/main/data/D.O_1.png)
🧩 Dashboard Overview
1. 📈 Dynamics of Nominations and Wins by Year
Observations:
A sharp increase in nominations from the 1930s, peaking in the 1950s–1960s.

The number of wins (yellow line) remains stable (~20–30) despite fluctuations in nominations.

Insights:
Growth in nominations likely due to category expansion.

Stable win count suggests structural limits—only one winner per category.

Hypotheses:
Do global events (e.g., wars, cultural shifts) impact nomination counts?

Is competition in the industry becoming more intense over time?

2. 🏆 Top Performing Actors and Films
Top Oscar-winning actors:
Katharine Hepburn – 4 wins.

Frances McDormand, Jack Nicholson, Meryl Streep – 3 wins each.

Top winning films:
Titanic – 12 Oscars from 16 nominations.

Ben-Hur, LOTR: Return of the King – 11 wins.

Gigi, The Last Emperor – 9 wins with 100% success.

Insights:
Some films achieve near-total dominance in their year.

High nomination counts for some actors don't always mean more wins.

Hypotheses:
Are some genres more Oscar-friendly?

Does studio or marketing influence impact win rates?


![Image alt](https://github.com/YakymivLuybomyr/oscar_awards_analysis/blob/main/data/D.O_%202.png)
3. ⚖️ Nomination-to-Win Ratios (Films & Actors)
Films:
LOTR: Return of the King – 11/11 (100%).

Titanic – 12/16, West Side Story – 11/18.

Actors:
Meryl Streep – 21 nominations, 3 wins.

Katharine Hepburn – 12 nominations, 4 wins.

Insights:
Quantity of nominations doesn't always reflect win efficiency.

Some films have "perfect storm" years where they win nearly all categories.

Hypotheses:
Are voters biased toward narrative-driven campaigns or cumulative achievements?


![Image alt](https://github.com/YakymivLuybomyr/oscar_awards_analysis/blob/main/data/D.O_3.png)
4. 👩‍🦰👨‍🦱 Gender Distribution by Category
Observations:
Acting awards represent only ~17% of total Oscars.

Over 83% of awards go to general/technical categories.

Insights:
Female representation in technical categories remains limited.

Recent years show increased recognition for female directors and creators.

Hypotheses:
Are social movements (e.g., #MeToo) influencing nomination trends?

Do technical fields have systemic barriers to female participation?

5. 🧮 Win Rates by Oscar Category
Highest win volumes:
Directing – 469 nominations, 95 wins.

Documentary (Short) and Best Picture show varied success rates.

Insights:
Some categories are more competitive and predictable than others.

Smaller, niche categories may exhibit higher win efficiency.

Hypotheses:
Are newer categories more or less competitive?

Does visibility influence perceived "worth" of a category?

📁 Project Structure
graphql
Копіювати
Редагувати
├── data/                # Historical data (CSV/Excel)
├── sql_queries/         # SQL transformations and aggregation
├── visuals/             # Power BI dashboards
├── README.md            # Project documentation
🛠 Technologies
SQL (PostgreSQL): Data extraction, joins, aggregations.


