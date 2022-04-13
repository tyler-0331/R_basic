# iris dataset 으로 선형회귀 분석: 상관관계와 회귀몰델의 적합성

head(iris,3)
cor(iris[,1:4])
cor(iris[,-5])

# 연습 1: 상관관계가 약한 변수로 모델 작성
cor(iris$Sepal.Length, iris$Sepal.Width)  # -0.1175698
model1 <- lm(formula = Sepal.Length ~ Sepal.Width, data = iris)
summary(model1) # p-value: 0.1519 > 0.05 이므로 적합합 모델이 아님.
# R-squared:  0.01382

# 연습 2: 상관관계가 강한 변수로 모델 작성
cor(iris$Sepal.Length, iris$Petal.Length) # 0.8717538
plot(iris$Petal.Length,iris$Sepal.Length)

model2 <- lm(formula = Sepal.Length ~ Petal.Length, data = iris)
summary(model2)  # p-value: < 2.2e-16 <0.05 이므로적합한 모델이다. 그러므로 유의하다. R-squared:   0.76 : 독립변수가 종속변수를 76프로 정도 설명하고 있다. 

# 회귀분석모형의 적절성을 위한 조건을 충족해야 함
# ...














