library(readr)
library(docopt)

"Usage:03-model.R --file_path=<file_path> --output_path=<output_path>" -> doc
opt <- docopt(doc)


# model
data <- readr::read_csv(opt$file_path)

model <- glm(survived ~ as.factor(pclass) + sex + age + fare, 
             data = data, 
             family = "binomial")

summary(model)

# save model as an R object
write_rds(model, "output/model.RDS")
