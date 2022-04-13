# cars dataset 으로 단순선형회귀 분석
head(cars,3)
dim(cars) # 50  2  자동차의 속도, 제동거리. 속도로 인한 제동거리 예즉 모델 작성

cor(cars$speed, cars$dist)  #0.8068949
plot(cars$speed, cars$dist)

m <- lm(formula = dist ~ speed, data = cars)
names(m)
coef(m) # -17.579095    3.932409  회귀계수 값만 보기

summary(m)  # p-value: 1.49e-12 <0.05 유의한 모델, R-squared, 
# R-squared:  0.6511  65 프로 정도 설명하고 있다. 
summary(m)$r.squared   # R-squared 값만 보기 
anova(m)
confint(m)


















