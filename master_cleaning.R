# This is team A's script header : Cleaning Demographics variables

# Let's download the database
ess.data <- read.csv("ess_messy_extract.csv")

# Show age variable, agea
table(ess.data$agea)
# The problem is : weird ages such as -5 and 1980
# We are going to modify these values to NA
ess.data$agea <- ifelse(ess.data$agea=="-5","NA",ess.data$agea)
ess.data$agea <- ifelse(ess.data$agea=="1980","NA",ess.data$agea)
# let's see if it works
table(ess.data$agea)

# show gender variable, gndr
table(ess.data$gndr)
# The problem is : weird answers such as 3, 99 or 999
# We are going to modify these values to NA
ess.data$gndr <- ifelse(ess.data$gndr=="3","NA",ess.data$gndr)
ess.data$gndr <- ifelse(ess.data$gndr=="99","NA",ess.data$gndr)
ess.data$gndr <- ifelse(ess.data$gndr=="999","NA",ess.data$gndr)
# let's see if it works
table(ess.data$gndr)

# show education variable, eduyrs
table(ess.data$eduyrs)
# The problem is : weird school years such as -2 and 150
# We are going to modify these values to NA
ess.data$eduyrs <- ifelse(ess.data$eduyrs=="-2","NA",ess.data$eduyrs)
ess.data$eduyrs <- ifelse(ess.data$eduyrs=="150","NA",ess.data$eduyrs)
# let's see if it works
table(ess.data$eduyrs)