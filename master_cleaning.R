# Member B: POLITICAL VARIABLES

# import dataset
data <- read.csv("ess_messy_extract.csv")

# POLITICAL ORIENTATION & VOTING BEHIVOR
# polintr: how interested in politics

# check the encoding
table(data$polintr) # an extra label "Not at all" which should be encoded with a "4"
data$polintr <- ifelse(data$polintr == "Not at all", 4, data$polintr) # reassignation
table(data$polintr) # final check (OK)

# recode as factors
data$polintr <- as.factor(data$polintr) 
