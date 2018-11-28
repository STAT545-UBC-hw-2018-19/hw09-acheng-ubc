# Dependencies
library(ggplot2)
library(dplyr)
library(tidyverse)

# Load words.txt and set all words to lowercase
words <- tolower(readLines("words.txt"))

# Split words into constituent letters
# Use unlist() to turn list of lists into a single list
letters <- unlist(strsplit(words, ""))

# Create table of the number of occurences of each letter
# Use as.data.frame() to ready for plotting
letters_count <- as.data.frame(table(letters))
letters_count <- letters_count[-1,] # remove occurrences of hyphens

# Save letters count as a table for inclusion in report.html
write.table(letters_count, "letters_count.tsv",
            sep = "\t", row.names = FALSE, quote = FALSE)

# Generate a bar chart of letter occurrences using ggplot
histogram_unsorted <- letters_count %>%
  mutate(highlight_flag = ifelse(letters == 'e', "yes", "no")) %>%
  ggplot(aes(x = letters, y = Freq, fill = highlight_flag)) +
  geom_bar(stat = "identity") +
  labs(x = "", y = "Frequency") +
  scale_fill_manual(values = c("yes" = "tomato", "no" ="gray")) +
  guides(fill=FALSE)

# Generate a bar plot sorted in descending frequency
histogram_sorted <- letters_count %>%
  mutate(highlight_flag = ifelse(letters == 'e', "yes", "no"),
         letters = fct_reorder(letters, Freq, .desc = TRUE)) %>%
  ggplot(aes(x = letters, y = Freq, fill = highlight_flag)) +
  geom_bar(stat = "identity") +
  labs(x = "", y = "Frequency") +
  scale_fill_manual(values = c("yes" = "tomato", "no" ="gray")) +
  guides(fill=FALSE)

# Save the bar plots
ggsave("histogram_unsorted.png", plot = histogram_unsorted, width = 7, height = 7)
ggsave("histogram_sorted.png", plot = histogram_sorted, width = 7, height = 7)


