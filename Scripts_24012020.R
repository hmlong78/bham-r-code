cats <- data.frame (coat = c("calico", "black", "tabby"), 
                    weight = c(2.1, 5.0, 3.2), 
                    likes_string = c(1, 0, 1))
write.csv (x=cats, file="data/feline_data_2.csv", row.names=FALSE)
cats <- read.csv (file="data/feline_data_2.csv")

Data_matrix <- matrix(data=c(1:20), ncol=5, nrow=4)

new.row <- c(1, 6, 8, 9, "a")

rbind (data_matrix, new.row)
rbind (Data_matrix, new.row
       )
new_row <-  c("black", 5.2, TRUE)

rbind (cats, new_row)

str(rbind (cats, new_row))

new_row <- list (coat="black", weight=4.1, likes_string=FALSE)

str(rbind(cats, new_row))

cats$new_column <- c(1, 4, 5)

dim(data_matrix)

dim(Data_matrix)

length (new_row)
length(cats)

length(Data_matrix)
dim(Data_matrix)

data_matix_2 <- matrix(data = c(1:50, ncol=5, nrow=10))
data_matrix_2 <- matrix(data=c(1:50, ncol=5, nrow=10))
data_matix_3 <- matrix(1:50, ncol=5, nrow=10)





vec <- c(1, 3)
mat <- matrix(1:3, ncol=2, nrow=3)

dframe <- data.frame(x=c(1, 4, 7, 8, 9), y=c("a", "b", "c", "d", "e" ))
ldata <- list(x=c(1:5), y=c("a", "b", "c", "e"))

vec [2]
vec [c(2,1)]

mat[1, 2]

dframe [3, 2]
ldata [2]


gapminder <- read.csv(file="data/gapminder-FiveYearData.csv")
dim (gapminder)
length (gapminder)
str (gapminder)
nrow (gapminder)
ncol (gapminder)
head (gapminder)
tail (gapminder)

dim (gapminder)
gapminder [78:82, 1:2]
sample (1:1700, 10)

sample (1:1700, 10 [78:82,]
        
gapminder[sample(1:1700, 10), ]

m <- matrix(1:18, nrow=3, ncol=6)
print(m)

m[4:5,2]
m[2,c(4,5)]
m[c(2,3), 6]
m[2, ]
m [, 2]

x <- 8

if (x >=10){print ("x is greater than or equal 10")} else if (x > 5){ print ("x is smaller than 10, but bigger than 5")} else { print ("x is smaller than 5")}

gapminder [, 2]

if (gapminder$year == 2002) { print ("records from 2002 exist")}

if (gapminder$year == 2002){print ("Yes it is")}

any (gapminder$year == 2002)

if (!all (gapminder$year == 2012)){print ("yes it is")}

any (gapminder$year == 2009)


for (i in 1:5) {for (j in c("a", "b", "c", "d", "e")){print (paste(i,j))}}

continents <- unique (gapminder$continent)

for (continent in continents){
  logical_val <- gapminder$continent == continent 
  lifeExp_sub <- gapminder$lifeExp[logical_val]
  mean_val <- mean(lifeExp_sub)
  if (mean_val >= 55){ cat ("Mean life expectancy in", continent, "larger than 55! \n")} 
  else { cat ("Mean life expectancy in", continent, "smaller than 55! \n")}}



library (ggplot2)

ggplot (data=gapminder, aes(x=year, y=lifeExp, by=country)) + 
  geom_line(aes(colour=continent)) + geom_point()

ggplot (data=gapminder, aes(x=year, y=lifeExp, by=country)) + 
  geom_point () + geom_line(aes(colour=continent))

ggplot (data=gapminder, aes(x=gdpPercap, y=lifeExp, color=continent)) + 
  geom_point (alpha=0.5) + scale_x_log10() + geom_smooth(method="lm")


starts <- substr(gapminder$country, start=1, stop=1)
az.countries <- gapminder[starts %in% c("A", "Z"), ]

ggplot(data=az.countries, aes(x=year, y=lifeExp, colour=continent)) +
  geom_line() + facet_wrap(~ country)
