# Create Datasets

# Preload libraries
library(data.table)
library(mlbench)
library(caret)


# Dataset for Regression
# http://www.cs.toronto.edu/~delve/data/boston/bostonDetail.html
data("BostonHousing")
set.seed(54321)
row_train = createDataPartition(BostonHousing$medv, p = 0.8, list = FALSE)
d_train = BostonHousing[row_train,]
d_test = BostonHousing[-row_train,]
fwrite(d_train, file = "./data/regression/house_price_train.csv")
fwrite(d_test, file = "./data/regression/house_price_test.csv")


# Dataset for Classification
# from previous demo
# see https://github.com/woobe/h2o_demo_for_ibm_dsx


# Dataset for Clustering
# https://archive.ics.uci.edu/ml/datasets/water+treatment+plant


wp_raw = fread("https://archive.ics.uci.edu/ml/machine-learning-databases/water-treatment/water-treatment.data")

wp_names = c("name",
             "Q-E",
             "ZN-E",
             "PH-E",
             "DBO-E",
             "DQO-E",
             "SS-E",
             "SSV-E",
             "SED-E",
             "COND-E",

             "PH-P",
             "DBO-P",
             "SS-P",
             "SSV-P",
             "SED-P",
             "COND-P",

             "PH-D",
             "DBO-D",
             "DQO-D",
             "SS-P",
             "SSV-P",
             "SED-P",
             "COND-P",

             "PH-S",
             "DBO-S",
             "DQO-S",
             "SS-S",
             "SSV-S",
             "SED-S",
             "COND-S",

             "RD-DBO-P",
             "RD-SS-P",
             "RD-SED-P",
             "RD-DBO-S",
             "RD-DQO-S",
             "RD-DBO-G",
             "RD-DQO-G",
             "RD-SS-G",
             "RD-SED-G")

colnames(wp_raw) = wp_names

fwrite(wp_raw, file = "./data/clustering/water_treatment_plant.csv")



