library(readr)

# model
data <- readr::read_csv("data/titanic_clean.csv")

model <- glm(survived ~ as.factor(pclass) + sex + age + fare, 
             data = data, 
             family = "binomial")

summary(model)

# save model as an R object
write_rds(model, "output/model.RDS")
