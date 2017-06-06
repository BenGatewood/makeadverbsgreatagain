library(readr)
library(tidytext)
library(dplyr)

if (!exists("tidyPosts")) {
        
        theDonaldPosts <- read_csv("./rtd_sample_20151014_20170530/The_Donald_posts.csv")
        theDonaldPosts %>% 
                unnest_tokens(word, text) %>%
                anti_join(stop_words) -> tidyPosts
        
}

if (!exists("tidyComments")) {
        
        theDonaldComments <- read_csv("./rtd_sample_20151014_20170530/The_Donald_comments.csv")
        theDonaldComments %>% 
                unnest_tokens(word, text) %>%
                anti_join(stop_words) -> tidyComments
        
}



