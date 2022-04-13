#
result<- read.csv("testdata/drinking_water.csv", fileEncoding = "UTF-8")
head(result)
summary(result)

# 공분산 (힘의 방향을 알수 있다.)
cov(result$친밀도, result$적절성) 
cov(result)

#상관계수 ( 힘의 크기를 알수 있다.)
?cor
cor(result$친밀도, result$적절성, method = "pearson")
cor(result)

cor(result$친밀도 + result$적절성 , result$만족도)

#시각화 
symnum(cor(result))

install.packages("corrgram")
library(corrgram)
corrgram(result)
corrgram(result, upper.panel = panel.conf)
corrgram(result, lower.panel = panel.conf)

install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)

chart.Correlation(result,histogram = , pch = '+')

#--------------------------------------------
cor(result, method = 'spearman') # 서열척도 
cor(result, method = 'kendall')
















