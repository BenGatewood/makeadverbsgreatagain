library(dplyr)
library(ggplot2)

tidyPosts %>% count(word, sort = TRUE) %>%
        filter(n > 2000) %>%
        mutate(word = reorder(word, n)) %>%
        ggplot(aes(word, n)) +
        geom_col() +
        xlab(NULL) +
        coord_flip() -> postFreq

print(postFreq)