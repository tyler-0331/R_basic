# 시각화(그래프 출력)
# 이산변수 : 막대, 원형, 점 ...
# 연속변수 : 상자박스, 히스토그램, 산점도 ...

# 막대
stu <- read.csv("testdata/ex_studentlist.csv")
head(stu,3)

stu$grade
table(stu$grade) # 빈도수 체크!

barplot(stu$grade)
?barplot
barplot(stu$grade, ylim = c(0,5), col = rainbow(2), main = '차트제목')  # y 축의 범위 정하기 ylim = c(0,5) , 색갈 정하기 col = c(1,2,3) / col = rainbow(2) # 제목 주기 main = '차트제목'

barplot(stu$grade, ylab = "학생",xlab="학년",
        col = rainbow(3), main = '차트제목', horiz=T)  #  x ,y 축 이름 주기  ylab = "학생",xlab="학년" #  이상 데이터 일때 가로로 바꾸기 horiz=T

par(mfrow= c(1,2))  # 1 행 2열 그래프 2개를 그리기
barplot(stu$grade,col=c(3,4,5))
barplot(stu[,4],col=rainbow(4), space = 2)

par(mfrow = c(1,1)) # 원래 형태로 돌아오기 그래프 1개
#점 
dotchart(stu$grade)
dotchart(stu$grade, color = 2:5, lcolor = "black", pch = 1:2, cex = 1.5)
# 라인 컬라 lcolor = "black", 닷의 모양 pch = 1:2, 닷의 크기 cex = 1.5

# 파이 그래프
str(stu)
df <- na.omit(stu)
str(df)
pie(df$age)  # 데이터 양이 많을때나 관찰값이 적을때 
pie(df$age, labels = df$age, lty = 3) # 라인 스타일 lty = 3 
?pie

# 상자박스 : box plot
mean(stu$height)
median(stu$height)
quantile(stu$height)
boxplot(stu$height)  # median 값을 나타낸다!!

boxplot(stu$height) 
boxplot(stu$height, range = 0) # 최대값 최소값 연결시 range = 0 으로 
boxplot(stu$height, range = 1) 
boxplot(stu$height, range = 1, notch = T) # 중위수 비교 
abline(h=170, lty=3, col="blue")

# 히스토그램 : histogram (hist)
hist(stu$height)
hist(stu$height, breaks = 5)  # 막대의 간격
hist(stu$height, prob=T)
lines(density(stu$height))  # 부드러운 곡선 

hist(stu$height, xlab = "키", ylab="학생 수", main="히스토그램", xlim=c(150,200),col="blue")

#산점도 scatterplot 
price <- runif(10,min=1, max = 100)
plot(price)
par(mfrow=c(2,2)) # 그래프 2행 2열로 
plot(price,type='l')
plot(price,type='o')
plot(price,type='h')
plot(price,type='s')
?plot

# ----------------------------------
# 3차원 산점도 그래프 
install.packages("scatterplot3d")
library("scatterplot3d") 

par(mfrow=c(1,1))
# 붓꽃의 종류별 분류로 3차원 그래프 그리기
levels(iris$Species) 
iris
ir.setosa = iris[iris$Species=='setosa', ]
ir.virginica = iris[iris$Species=='virginica', ]
ir.versicolor = iris[iris$Species=='versicolor', ]

# 형식 : scatterplot3d( 밑변，우변칼럼명，좌변칼럼명，type) 
# 틀 생성
irdata <- scatterplot3d(iris$Petal.Length, iris$Sepal.Length, iris$Sepal.Width, type = 'n')

# 산점도 시각화
irdata$points3d(ir.setosa$Petal.Length, ir.setosa$Sepal.Length, 
                ir.setosa$Sepal.Width, bg='red', pch=21)
irdata$points3d(ir.virginica$Petal.Length, ir.virginica$Sepal.Length, 
                ir.virginica$Sepal.Width, bg='blue', pch=23)
irdata$points3d(ir.versicolor$Petal.Length, ir.versicolor$Sepal.Length,
                ir.versicolor$Sepal.Width, bg='yellow', pch=25)

# ggplot2 package : 그래프 기능이 확장된 패키지(라이브러리)
library(ggplot2)
head(mpg,3)
ggplot(data=mpg,aes(x=displ))
ggplot(data=mpg,aes(x=displ, y=hwy)) + geom_point()
ggplot(data=mpg,aes(x=displ, y=hwy)) + geom_point() + xlim(3,6) + ylim(10,30)

install.packages("dplyr")
library(dplyr)
df_mpg <-mpg %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy))
df_mpg

ggplot(data = df_mpg, aes(x=drv, y=mean_hwy)) + geom_col()

ggplot(data = mpg, aes(x=drv, y=hwy)) + geom_boxplot()























