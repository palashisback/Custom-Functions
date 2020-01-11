library(tidyverse)
# Number of Unique Elements
## Function takes a vector list as an argument
## and returns the number of unique elements in it
## Arguments :
##  x = A vector/list

nunique <- function(x){
  return(length(unique(x)))
}

# Lollipop Chart

lollipop <- function(data,x,y,ordered = 'a',size = 5,color='gold'){
  ggplot(data=data,aes(x = reorder(get(x),get(y)),y = get(y))) +
    geom_point(size=size,col = color) + 
    geom_segment(aes(x = get(x), 
                     xend= get(x), 
                     y=min(get(y)), 
                     yend=max(get(y))), 
                 linetype="dashed", 
                 size=0.1) + 
    ylab(y) +
    xlab(x) +
    coord_flip() +
    theme_bw()
}

lollipop(x,x = 'car', y = 'mpg')

