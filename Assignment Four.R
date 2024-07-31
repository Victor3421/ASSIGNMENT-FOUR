# Install and Load necessary libraries
install.packages("ggplot2")
library(ggplot2)
# Read the cleaned dataset
df <- read.csv('C:/brotherman/ASSIGNMENT FOUR/Netflix_shows_movies.csv')

#View the data that has been
View(df)

# Count the genres
genre_counts <- table(df$type)
genre_counts

# Convert to a data frame
genre_df <- as.data.frame(genre_counts)

# Rename columns
names(genre_df) <- c('Genre', 'Count')

# Create a bar plot
ggplot(data = genre_df, aes(x = reorder(Genre, -Count), y = Count)) +
  geom_bar(stat = 'identity', fill = 'skyblue') +
  theme(axis.text.x = element_text(angle = 0, hjust = 1)) +
  labs(title = 'Most Watched Genres', x = 'Genre', y = 'Count')
