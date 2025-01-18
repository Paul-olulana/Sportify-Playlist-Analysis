# Spotify-Playlist-Analysis

## Description
This project analyzes Spotify playlists spanning from 2010 to 2023. Using R, the project explores music trends, genres, and artist popularity over time. The repository includes scripts for data cleaning, exploration, and visualization, as well as dynamic reports and dashboards for presenting the results interactively.

---

## Features
- **Data Analysis**: Explore trends in music from Spotify playlists over a 13-year period.
- **Visualization**: Generate insights through plots and charts, showcasing genre and artist trends.
- **Dynamic Reporting**: Interactive HTML reports created using RMarkdown.
- **Custom Styling**: Enhanced visuals with custom CSS.

---

## Project Structure

```
Spotify-Playlist-Analysis/
├── data/                   # Raw data files (e.g., playlist_2010to2023.csv)
├── notebooks/              # R scripts and analysis files
│   ├── Spotify_Playlist_Analysis.R
│   ├── Spotify.Rmd
├── reports/                # Generated reports
│   ├── Spotify.html
├── styles/                 # Custom stylesheets
│   └── styles.css
├── README.md               # Project overview and usage instructions
├── .Rproj                  # R Project file
└── .gitignore              # Ignored files
```

---

## Requirements
To run this project, ensure you have the following installed:
- **R** (Version 4.0 or higher)
- **RStudio** (Recommended for running RMarkdown files)
- Libraries:
  - ggplot2
  - dplyr
  - tidyr
  - knitr
  - rmarkdown

Install required packages using:
```R
install.packages(c("ggplot2", "dplyr", "tidyr", "knitr", "rmarkdown"))
```

---

## Getting Started

### Clone the Repository
```bash
git clone https://github.com/Paul-olulana/Spotify-Playlist-Analysis.git
cd Spotify-Playlist-Analysis
```

### Running the Analysis
1. Open the R project file `Spotify_Playlist_Analysis.Rproj` in RStudio.
2. Run `Spotify_Playlist_Analysis.R` for data cleaning and exploration.
3. Open and knit `Spotify.Rmd` to generate an HTML report.

### Viewing Reports
- The generated HTML report (`Spotify.html`) provides interactive visualizations and insights.

---

## Outputs
- **Interactive Dashboards**: Visualize trends and patterns in music.
- **Detailed Reports**: Generated insights into genres, artists, and overall playlist trends.

---

## Contributing
Contributions are welcome! Feel free to fork this repository and submit a pull request for:
- Bug fixes
- Feature additions
- Improvements to the visualizations or code structure

---

## Acknowledgments
- Data sourced from Kaggle.
- Libraries and tools used in the project include R, ggplot2, dplyr, and RMarkdown.

---

## Contact
For questions or feedback, feel free to reach out:
- **Author**: Paul Olulana
- **Email**: Paulolulana00@gmail.com
- **GitHub**: https://github.com/Paul-olulana | https://github.com/DeborahOsilade
