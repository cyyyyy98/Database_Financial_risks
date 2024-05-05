credit <- read.csv('credit_risk_dataset.csv', stringsAsFactors = TRUE)
str(credit)
# create ID col generating auto-incrementing values
library(dplyr)
credit <- credit %>%
  mutate(ID = row_number())
credit
# put ID col in the first position
credit <- credit %>%
    select(ID, everything())
str(credit)
write.csv(credit, file = "Credit.csv", row.names = FALSE)

stock <- read.csv('stocks.csv', stringsAsFactors = TRUE)
str(stock)

credit2 <- read.csv('Credit2.csv', stringsAsFactors = TRUE)
library(dplyr)
colnames(credit)
credit <- credit %>%
    mutate(unique_col=paste(ID,person_age,person_income,person_home_ownership,
                            person_emp_length,loan_intent,loan_grade,loan_amnt,
                            loan_int_rate,loan_status,loan_percent_income,
                            cb_person_default_on_file,cb_person_cred_hist_length,
                            sep = "_"))
colnames(credit2)
credit2 <- credit2 %>%
    mutate(unique_col=paste(ID,Age,Income,Housing,Tenure,LoanIntent,LoadGrade,
                            LoanAmount,Rate,Status,LoaninIncome,DefaultHist,
                            BeRecorded,
                            sep = "_"))

only_in_credit <- setdiff(credit$unique_col, credit2$unique_col)
differences_credit <- credit[credit$unique_col %in% only_in_credit, ]

credit_diff <- select(differences_credit,
                      ID,person_age,person_income,person_home_ownership,
                      person_emp_length,loan_intent,loan_grade,loan_amnt,
                      loan_int_rate,loan_status,loan_percent_income,
                      cb_person_default_on_file,cb_person_cred_hist_length)
write.csv(credit_diff, file = "Credit2.csv", row.names = FALSE)



credit <- read.csv("Credit.csv")
credit1 <- read.csv('credit_risk_dataset.csv')
