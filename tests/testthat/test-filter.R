
d = exclude(iris, Species == "setosa")


d = iris %>% distil(Species == "setosa" & Petal.Width > 0.1)


d = iris %>% distil(Species == "setosa" & Petal.Width > 0.1 & Sepal.Length < 5)
