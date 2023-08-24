test = iris %>%
  dplyr::mutate(Petal.Length = ifelse(Species == "setosa", NA, Petal.Length)) %>%
  dplyr::mutate(Petal.Length = if_na(Petal.Length, 1000))

test = iris %>%
  dplyr::mutate(Petal.Length = ifelse(Species == "setosa", NA, Petal.Length)) %>%
  dplyr::mutate(Petal.Length = if_not_na(Petal.Length, 1000))
