va <- 1
va <- 2
va = 3
4 -> va
cat('결과는',va)  # console 창에 출력 확인
print(va)  # 한가지만 출력 
# ctl + alt + r (전체 실행)
# ctl +shift + C  : 주석처리 (줄)
a <- 2
b <- 3

# 데이터 유형
kbs <- 9  # scalar 는 지원하지 않는다, 기본이 vector
object.size(kbs)
typeof(kbs)
typeof(3)
typeof(3.14)
is(kbs)   # data 유형 출력
mbc <- as.integer(kbs)   # 형 변환 (integer)
is(kbs)
typeof(kbs)
mbc <- 9L  # 형 변환 (integer)
is(mbc)
ss <- '홍길동'
typeof(ss)
is(ss)
ss[1]

b <- TRUE
is(b)
b <- T

# vector가 기본 값 : character, logical, numeric(integer)
typeof(NA)
aa <- NA # 결측 데이터(값이 입력되지 않은 상태)

aa
is(aa)

sum(2,3)
sum(2,3,NA)
sum(2,3,NA, na.rm = T)  # NA 무시하기

typeof(NULL)  # 데이터 값이 없음 !! 값으로 인식되지 X
sum(2,3,NULL)

typeof(NaN)  # 수학적으로 정의되지 않은 값
sum(2,3,NaN)

typeof(Inf)  # 무한대
sum(2,3,Inf)
0/0   
0*Inf
Inf - Inf

length(NA)
length(NaN)
length(NULL)

z <- 5.3-3i
z
is(z)

f <- function(){
  return('good')
}
f()
is(f)
typeof(f)

# x <- 123.4
x<-"123"
x <- FALSE
cat(mode(x),class(x), typeof(x))

ls() # 현재 사용중인 객체 목록
ls.str() # 목록 확인할때
rm(aa)  # 하나하나 지우기
rm(list=ls())
gc() # 정유된 메모리를 지우기!

#-----------------------------
# package: 데이터 + 함수 + 알고리즘 꾸러미
available.packages()
dim(available.packages())

install.packages("plyr")
library(plyr)  # package로딩 하기 
ls("package:plyr")  # package 안에 쓸수 있는 것들 확인
data(package="plyr")  # plyr 에서 제공하는 data 확인
baseball

remove.packages("plyr")

# 기본 dataset: 연습용 dataset이 제공
data()

head(Nile) # 앞에 6개의 데이터만 보여줌
tail(Nile) # 뒤에 6개의 데이터만 보여줌 
tail(Nile,3) # 뒤에 3개의 데이터만 보여줌 

hist(Nile,freq =F)  #(히스토그램)
lines(density(Nile))  # 선 그래프
 
help("hist") # 도움말 호출

? mean  # 도움말 호출
x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))

getwd() # working directory 

head(iris)
tail(iris)



