library("tidyverse")
str(surveys)
select(surveys,species_id,weight)
%>%

 
surveys %>% 
filter(year==1995) %>% 
select(species_id,weight)

exercise <- surveys %>% 
filter(weigth<5) %>%
select(species_id,sex,weight)

data_with_kg <- surveys %>% 
  mutate(weight_kg=weight/1000)
surveys %>% 
  mutate(weight_kg=weight/1000,weight_kg2=weight*2)
surveys %>% 
  mutate(weight_kg=weight/1000,weight_kg2=weight_kg*2) %>% head()
surveys %>% 
  filter(!is.na(weight)) %>% 
  mutate(weight_kg=weight/1000,weight_kg2=weight_kg*2) %>%
  head()

surveys %>% 
  filter(!sex=="") %>% 
  group_by(sex) %>% 
  summarise(mean_weight=mean(weight,na.rm=TRUE))
summarise_two <- surveys %>% 
  filter(!sex=="") %>% 
  filter(!is.na(weight)) %>% 
  group_by(sex,species_id) %>% 
  summarise(mean_weight=mean(weight))
summarise_three <- surveys %>% 
  filter(!weight=="") %>% 
  filter(!is.na(weight)) %>% 
  group_by(sex,species_id) %>% 
  summarise(mean_weight=mean(weight),min_weight=min(weight),max_weight=max(weight))

surveys_min  <- surveys %>% 
  filter(!weight=="") %>% 
  filter(!is.na(weight)) %>% 
  group_by(sex,species_id) %>% 
  summarise(mean_weight=mean(weight),min_weight=min(weight),max_weight=max(weight))
surveys %>% 
  filter(sex=="") %>% 
  count (sex,species)

surveys %>% 
  filter(!sex=="") %>% 
  count (sex,species) %>% 
  arrange(species, desc(n))

