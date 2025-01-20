Exercise 1 : 
DESCRIPTIVE STATISTICS
AIM :
	To write a R program to understand descriptive statistics by computing summary  statistics,mean,median,variance and standard deviation for numerical columns using R programming language.
PROCEDURE :
	STEP1:Launch R or R studio on your computer
	STEP2: In R studio, go to file new file  R script to create new script
	STEP3: In script,land the iris dataset using the codeiris
STEP4: Compute summary statistics , mean,median,variance and standard deviation
                          for the numeric columns,use the summary () for summary statistics
	STEP5: Display the calculated statistics using print(paste())
STEP6:Run the code for result
STEP7: Ensure that no error in console address errors by reviewing messages
STEP8: Save the Script with the extension “R”

PROGRAM:
# Load the iris dataset
data <- iris

# Calculate descriptive statistics
summary_stats <- summary(data)
mean_values <- sapply(data[, 1:4],mean)  # Exclude the Species column from mean calculations
median_values <- sapply(data[, 1:4], median)
variance_values <- sapply(data[, 1:4], var)
sd_values <- sapply(data[, 1:4], sd)



# Display the results
cat("Summary Statistics:\n", summary_stats, "\n\n")
cat("Mean Values:\n", mean_values, "\n\n")
cat("Median Values:\n", median_values, "\n\n")
cat("Variance Values:\n", variance_values, "\n\n")
cat("Standard Deviation Values:\n", sd_values, "\n")

OUTPUT :
Summary Statistics:
 Min.   :4.300   1st Qu.:5.100   Median :5.800   Mean   :5.843   3rd Qu.:6.400   Max.   :7.900   Min.   :2.000   1st Qu.:2.800   Median :3.000   Mean   :3.057   3rd Qu.:3.300   Max.   :4.400   Min.   :1.000   1st Qu.:1.600   Median :4.350   Mean   :3.758   3rd Qu.:5.100   Max.   :6.900   Min.   :0.100   1st Qu.:0.300   Median :1.300   Mean   :1.199   3rd Qu.:1.800   Max.   :2.500   setosa    :50   versicolor:50   virginica :50   NA NA NA 

Mean Values:
 5.843333 3.057333 3.758 1.199333 

Median Values:
 5.8 3 4.35 1.3 

Variance Values:
 0.6856935 0.1899794 3.116278 0.5810063 

Standard Deviation Values:
 0.8280661 0.4358663 1.765298 0.7622377

Exercise 2 : 
One Sample T-TEST 
AIM :
	To write a R program to perform t test and give interpretation based on the result using R programming language.
PROCEDURE :
	STEP1: Create new Script in R studio
	STEP2: Generate a Random Sample of 20 data points with mean and standard deviation.		STEP3: Perform One Sample t test using t-test function and display the result.
STEP4: Ensure that no error in the Console.
STEP5: Display the specific information such as man of the sample, Hypothesized mean,
  t  statistics, P-value and interpret the result based on p-value and alpha.
STEP6: Print the conclusion to select or Reject null Hypothesis 
STEP8: Save the script with the Extension R.

PROGRAM:
set.seed(123)
sample_data <- rnorm(20, mean = 10, sd = 2)
hypothesized_mean <- 10
alpha <- 0.05
ttest_res <- t.test(sample_data, mu = hypothesized_mean)

print("One sample t-test Result")
print(ttest_res)
print(paste("Mean of sample:", mean(sample_data)))
print(paste("Hypothesized mean:", hypothesized_mean))
print(paste("T-statistic:", ttest_res$statistic))
print(paste("P-value:", ttest_res$p.value))

if (ttest_res$p.value < alpha) {
  print("Conclusion: Reject null hypothesis")
} else {
  print("Conclusion: Accept null hypothesis")
}
OUTPUT:
"One sample t-test Result"

	One Sample t-test

data:  sample_data
t = 0.65116, df = 19, p-value = 0.5227
alternative hypothesis: true mean is not equal to 10
95 percent confidence interval:
  9.372805 11.193690
sample estimates:
mean of x 
 10.28325 

[1] "Mean of sample: 10.2832476049492"
[1] "Hypothesized mean: 10"
[1] "T-statistic: 0.651160156396415"
[1] "P-value: 0.522741340752749"
[1] "Conclusion: Accept null hypothesis" 


Exercise 3 : 
TWO SAMPLE T-TEST
AIM :
	To write a R program to perform two sample t test and give interpretation based on the result using R programming language.
PROCEDURE :
	STEP1: Create new Script in R studio
	STEP2:Input the data ,group1and group2
	STEP3: Perform two Sample t test  and display the result.
STEP4:Display the P-value from sample t-test	
STEP5: Interpret the result and display whether to choose on reject Null Hypothesis.
STEP6:  Repeat the steps for unequal Variance
STEP7: Calculate the variance of two data 
STEP8 :  display the variance
STEP9: Save the script with the Extension R.

PROGRAM:
alpha <- 0.05

group1 <- c(13.3, 6.0, 20.0, 8.0, 14.0, 19.0, 0.25, 0.0, 16.0, 24.0, 15.0, 1.0, 15.0, 18.0, 25.0, 16.0, 24.0)
group2 <- c(22.0, 16.0, 21.7, 21.0, 30.0, 26.0, 19.0, 23.9, 28.0, 23.0)

t_test_result <- t.test(group1, group2, var.equal = TRUE)

cat("Standard Two Sample t-test result for Equal Variance:\n")
print(t_test_result)
print(paste("p-value:", t_test_result$p.value))

if (t_test_result$p.value < alpha) {
  print("Conclusion: Reject the Null hypothesis")
} else {
  print("Conclusion: Fail to reject Null hypothesis")
}

OUTPUT:
Standard Two-Sample t-test result (Equal Variance):

	Two Sample t-test

data:  group1 and group2
t = -2.8, df = 21, p-value = 0.01073
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -12.798339  -1.889353
sample estimates:
mean of x mean of y 
 14.94615  22.29000 

[1] "p-value: 0.010730607904198"
[1] "Conclusion: Reject the null hypothesis"


Exercise 4 : 
CHI-SQUARE TEST
AIM :
	To write a R program to perform chi square test for categorical data.
PROCEDURE :
Step1:Create a new script in R studio. 
Step2:Set a Significance level. 
Step3:Create and display the contingency table with rows and columns. 
Step4: Perform chi square test and Display the result. 
Step5:Calculate the degrees of freedom. 
Step6: Calculate and Display the critical value. 
Step7:Compare the critical value with test statistic and interpret the result.
PROGRAM:
# Step 1: Set the significance level
alpha <- 0.05

# Step 2: Create a contingency table
data <- matrix(c(40, 30, 30, 50), nrow = 2)

#data <- matrix(c(25, 15, 10, 30), nrow = 2)
rownames(data) <- c("Male", "Female")
colnames(data) <- c("Bev A", "Bev B")

# Step 3: Display the contingency table
cat("Contingency Table:\n")
print(data)

# Step 4: Perform the chi-square test
result <- chisq.test(data)

# Step 5: Display the chi-square test result
cat("\nChi-Square Test Result:\n")
print(result)

# Step 6: Calculate degrees of freedom
df <- (nrow(data) - 1) * (ncol(data) - 1)

# Step 7: Calculate critical value
critical_value <- qchisq(1 - alpha, df)

# Step 8: Display critical value
cat("\nCritical Value (", alpha, "):", critical_value, "\n")

# Step 9: Compare critical value with test statistic and interpret the results
if (result$statistic > critical_value) {
  cat("\nReject the null hypothesis. There is a significant association between the variables.\n")
} else {
  cat("\nFail to reject the null hypothesis. There is no significant association between the variables.\n")
}

OUTPUT :
Contingency Table:
       Bev A Bev B
Male      40    30
Female    30    50

Chi-Square Test Result:

	Pearson's Chi-squared test with Yates' continuity correction

data:  data
X-squared = 5.0253, df = 1, p-value = 0.02498


Critical Value ( 0.05 ): 3.841459 

Reject the null hypothesis. There is a significant association between the variables.


