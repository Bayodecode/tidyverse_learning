library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
sort(murder_rate)

#which states, if any, have a murder rate lower than 0.5 per 100,000.
ind_2 <- which.min(murder_rate)

if(murder_rate[ind_2] < 0.5) {
  print(murders$state[ind_2])
} else{
  print("No state has murder rate that low")
}

#Examine better approaches to the above code

#got this code wrong, trying use for loop to generate names of states that have murder_rate lower than 0.5
for (i in murder_rate) {
  if(murder_rate < 0.5) {
    print(murders$state)
  } else{
    print("No state has murder rate that low")
  }
}

search()

#The tidyverse
install.packages("tidyverse")
library(tidyverse)
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total / population * 100000)



