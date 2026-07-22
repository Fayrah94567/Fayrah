
* Summer program Stata Workshop
* Fayrah Li

*In this Do-File we will explore
* introductory econometrics in Stata 

* Open the icecream shop's data
import delimited "/Users/m.l/Desktop/icecream.csv"

* Summarize the data
summarize revenue temperature
* Create a new variable called "hot"
gen hot =temperature > 30
* We can specity what data we want to see
summarize revenue if hot == 1
* Create a scatterplot
scatter revenue temperature
* Using the regress command to describe the relationship between ice cream revenue and temperature 
regress revenue temperature


* Remove the current dataset
* Clear all


* Summarize our non-dummy variables
summarize wage educ exper tenure


* tabulate our discrete variables 
tabulate educ 
tabulate exper 
tab tenure 
tab married 
tab female
* regression just considering education
regress wage educ, robust

*regression including demographic controls 
regress wage educ exper tenure female married, robust
