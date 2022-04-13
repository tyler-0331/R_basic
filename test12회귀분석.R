# 단순선형회귀 모델 연습: 독립, 종속변수가 각 1개씩
head(women,3)  # 키로 몸무게를 예측 

cor(women$height, women$weight) #상관관계  0.9954948
plot(weight ~ height, data =women) 

mfit <- lm(weight ~ height, data = women) #최소제곱법 을 이용함함 lm 
mfit
# y = 3.45 * x -87.52 라는 수식 완성
abline(mfit, col = 'red') # 잔차의 합의 최소가 되는 회귀선을 그어줌

print(3.45 * 58 -87.52)
predict(mfit, data.frame(height = c(58.59,80)))

summary(mfit) #R-squared:  0.991
# 모델의 요약통계량, 모델 정보
# t-value = 평균값의 차이를 비교할떄 , 표준오차로 기울기를 나눈것 
# 기울기 / std.error
# p-value = 변수가 또는 모델이 의미가 있는지 없는지 판단할때 쓴다. 5% 0.05 보다 크면 무의미 하다!
# std. Error = 샘플 데이타의 평균 에러값 , 샘플마다 다를수 있는 수치 이므로 낮으면 낮을수록 샘플 의 평균 데이타 값의 크기가 크게 차이 나지 않을 것이다.

# 최소제곱법은 유의 한지에 대한 여부는 알려주지 않는다 
cor.test(women$height, women$weight)  #상관계수 분석
# R-squared : 0.991 (설명력, 걸정계수) 독립변수가 종속변수를 얼마나 잘 설명하는지 모델의 성능을 설명하는 숫자이다 (참고자료!)
0.34 * 0.34

# 1) 정규성 : 독립변수들의 잔차항이 정규분포를 따라야 한다.
# 
# 2) 독립성 : 독립변수들 간의 값이 서로 관련성이 없어야 한다.
# 
# 3) 선형성 : 독립변수의 변화에 따라 종속변수도 변화하나 일정한 패턴을 가지면 좋지 않다.
# 
# 4) 등분산성 : 독립변수들의 오차(잔차)의 분산은 일정해야 한다. 특정한 패턴 없이 고르게 분포되어야 한다.
# 
# 5) 다중공선성 : 독립변수들 간에 강한 상관관계로 인한 문제가 발생하지 않아야 한다.
# 
# 예) 나이와 학년이 신체 구조에 미치는 영향(교집합이 매우 커 다중공선성 우려). 아래 그림 참조.

# 그래프로 확인
plot(mfit)
par(mfrow= c(2,2))
plot(mfit)

# 위의 그래프를 통해 선형성을 만족하지 못함
# 이런경우 비선형 회귀모델을 작성(polynomial Regression) : 다항회귀
mfit2 <- lm(weight ~ height + I(height ^ 2), data = women)
summary(mfit2)  # R-squared:  0.9995

predict(mfit2, data.frame(height = c(59, 58, 44, 63)))
# 117.47311, 115.10294 , 99.36403 ,128.61506 






















