clear
set more off

/*
use "/Users/kmpiekarski/Sites/GSR708/marriage-income.dta"
*/

describe

/*
DV: HAPMAR categorical
IV: CONRINC continuous
CV: SATFIN categorical
*/

**** Clean Data /*
tab HAPMAR, missing
drop if missing(HAPMAR)

tab CONRINC, missing
drop if missing(CONRINC)

tab SATFIN, missing
drop if missing(SATFIN)

tab AGE, missing
drop if missing(AGE)

tab SEX, missing
drop if missing(SEX)

tab DEGREE, missing
drop if missing(DEGREE)

save "/Users/kmpiekarski/Sites/GSR708/marriage-income_clean.dta", replace
use "/Users/kmpiekarski/Sites/GSR708/marriage-income_clean.dta", clear


**** Select 1000 random samples of total data population
set seed 12345
sample 1000

**** save sample data
save "/Users/kmpiekarski/Sites/GSR708/marriage-income_sample.dta", replace

*/ 

**** load sample data
use "/Users/kmpiekarski/Sites/GSR708/marriage-income_sample.dta", clear
**** Table 1: Descriptive Statistics

**** Table 2:  Pairwise Correlation

**** Table 3: Regression (binary required – Model1, multi-variable linear regression models – optional)




**** Optional: t-test; ANOVA test
