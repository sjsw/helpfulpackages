install.packages("devtools")
if(!require(rvest)) devtools::install_github("hadley/rvest")

cran_package_names <- c("fPortfolio",
                        "quantmod",
                        "PerformanceAnalytics",
                        "randomForest",
                        "ranger",
                        "data.table",
                        "magrittr",
                        "here",
                        "tidyverse",
                        "reshape2",
                        "ggplot2",
                        "future",
                        "foreach",
                        "doParallel",
                        "doSNOW",
                        "RhpcBLASctl",
                        "parallel",
                        "plyr",
                        "MASS",
                        "rBayesianOptimization",
                        "dbarts",
                        "BayesTree",
                        "Rcpp",
                        "Methods",
                        "Matching",
                        "quickmatch",
                        "distances",
                        "Metrics",
                        "xgboost",
                        "rJava",
                        "nnet",
                        "caTools",
                        "pamr",
                        "rpart",
                        "earth",
                        "gbm",
                        "e1071",
                        "C50",
                        "party",
                        "caret",
                        "mboost",
                        "glmnet",
                        "bartMachine",
                        "TTR",
                        "Corrplot",
                        "FSelector",
                        "rJava",
                        "mgcv",
                        "klaR",
                        "kernlab",
                        "stepPlr",
                        "mda",
                        "fst",
                        "rio",
                        "h2o",
                        "mlr",
                        "devtools",
                        "plotly",
                        "gridExtra",
                        "optimization",
                        "roptim",
                        "ggsci",
                        "superheat",
                        "ipred",
                        "ROCR",
                        "lubridate",
                        "feather")

# Try to load all CRAN packages to determine which need to be installed.
result = sapply(cran_package_names, require, character.only = TRUE, quietly = TRUE)

cat("CRAN packages to install:", paste(cran_package_names[!result], collapse = ", "),
    "\n")

# Install remaining packages.
install.packages(cran_package_names[!result])

sapply(cran_package_names, function(pkg) tryCatch(install.packages(pkg)))


devtools::install_github("soerenkuenzel/causalToolbox",
                         auth_token = "aa0ad95703c119244a0ff7d9661d3ec5592e3bb1")
devtools::install_github("soerenkuenzel/forestry")
devtools::install_github("ecpolley/SuperLearner")
devtools::install_github("ck37/ck37r")
devtools::install_github("ja-thomas/autoxgboost")
devtools::install_github("PhilippPro/OOBCurve")
devtools::install_github("tlverse/sl3")


github_package_names <- c("causalToolbox", "forestry", "SuperLearner", "ck37r", "autoxgboost",
                          "OOBCurve", "sl3", "rvest")

all_packages <- c(github_package_names, cran_package_names)

all_packages[!all_packages  %in% installed.packages()]
