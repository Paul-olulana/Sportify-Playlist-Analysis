#Load libraries
library(readr)
library(ggplot2)
library(dplyr)

spotify_data <- read_csv("~/BSB_Docs/Rmarkdown_Project/Spotify Playlist/playlist_2010to2023.csv")

# Previewing the first few rows of the dataset
head(spotify_data)

# Checking the structure of the dataset
str(spotify_data)

# Check for missing values
colSums(is.na(spotify_data))

# Get a summary of numeric columns
summary(spotify_data)

 #Clean the Dataset

spotify_data <- spotify_data %>%
  
  rename(
    genre = "artist_genres",  
    popularity = "artist_popularity"
  )
#Remove irrelevant or low-quality data if necessary
#Filter for tracks with popularity >50

spotify_clean <- spotify_data %>%
  filter(popularity > 50)

# Create Basic Visualizations
#Bar Chart: Top Genres by Song Count
ggplot(spotify_clean, aes(x = genre)) +
  geom_bar(fill = "steelblue") +
  coord_flip() +
  theme_minimal() +
  labs(
    title = "Top Genres by Song Count",
    x = "Genre",
    y = "Number of Songs"
  )

# Scatter Plot: Danceability vs. Energy
ggplot(spotify_clean, aes(x = danceability, y = energy, color = popularity)) +
  geom_point(alpha = 0.7) +
  scale_color_gradient(low = "blue", high = "red") +
  theme_light() +
  labs(
    title = "Danceability vs. Energy",
    x = "Danceability",
    y = "Energy",
    color = "Popularity"
  )

#Line Chart: Popularity Trend Over Time
popularity_trend <- spotify_clean %>%
  group_by(year) %>%
  summarize(avg_popularity = mean(popularity, na.rm = TRUE))

ggplot(popularity_trend, aes(x = year, y = avg_popularity)) +
  geom_line(color = "darkblue", linewidth = 1.2) +  # Use 'linewidth' instead of 'size' for ggplot2 3.4+
  geom_point(color = "red", size = 2) +
  theme_minimal() +
  labs(
    title = "Popularity Trend Over Time",
    x = "Year",
    y = "Average Popularity"
  )


# Aggregate total popularity by artist
artist_popularity <- spotify_clean %>%
  group_by(artist_name) %>% 
  summarize(total_popularity = sum(popularity, na.rm = TRUE)) %>%
  arrange(desc(total_popularity))

# Plot: Most popular artist
ggplot(artist_popularity[1:10, ], aes(x = reorder(artist_name, total_popularity), y = total_popularity)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  theme_minimal() +
  labs(
    title = "Top 10 Most Popular Artists on Spotify (2010–2023)",
    x = "Artist",
    y = "Total Popularity"
  )

#Artist Popularity vs. Total Songs:
artist_stats <- spotify_clean %>%
  group_by(artist_name) %>%
  summarize(
    total_songs = n(),
    total_popularity = sum(popularity, na.rm = TRUE),
    avg_popularity = mean(popularity, na.rm = TRUE)
  ) %>%
  arrange(desc(total_popularity))

# Plot
ggplot(artist_stats[1:10, ], aes(x = total_songs, y = total_popularity, size = avg_popularity, label = artist_name)) +
  geom_point(alpha = 0.7, color = "blue") +
  geom_text(vjust = -0.5, hjust = 0.5) +
  theme_minimal() +
  labs(
    title = "Artist Popularity vs. Total Songs (Top 10 Artists)",
    x = "Total Number of Songs",
    y = "Total Popularity",
    size = "Average Popularity"
  )


