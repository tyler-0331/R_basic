# R의 자료 구조(객체 타입)
# Vector, Matrix, Array, List, DataFrame
# Vector, Matrix, Array 는 타입이 같아야 함
# 
#1. vector: 1차원 배열 형태의 자료구조 (동일한 타입)
year <- 2022
is(year)  
year <- "2022"
is(year)  
year[1]
is.vector(year)

# 벡터 수열 
# seq(from, to , by) , seq(start, end ,step)
seq(1,5)
1:5
seq(1,10,2)
seq(1,10,length.out=4)  # seq의 수를 length.out으로 정한다

rep(1:3,3)   # 수열을 만들면서 3번을 반복 한다
rep(seq(1,3),3)
rep(1:3,each=3)  # 하나씩 나오면서 3번 반복
rep(1:2,each=5, times=2)  # 총 횟수 2번

c(1,2,5,-3,-10, 10:15)  # combine value function
aa <- c(1:10)
sum(aa)
aa

c(22,-5.7, '문자열')
c(1,2.5,T,F)  # true 는 숫자로 1, false는 0

age <-  c(10,20,30)
age
age[1]
age[3]
age[4]  # 없으면 NA
age <- c(age,40)
age
age[10] <- 50  # 10 번째에 50이 들어가고 value 가 없는 곧은 NA
age
age <- append(age,60,after = 6)
age
age <- NULL
age

v1 <- c(13,-5,20:23,12,-2:3)
v1
v1[1]
v1[c(2,4,4:7)] # indexing or slicing by using combine c
v1[-c(2,3)] # 여집합 출력
v1

13 %in% v1  # 벡터에 포함된 값 유무 확인
11 %in% v1  

nrow(v1)  #건수 확인: 행렬만 가능
NROW(v1)  #건수 확인: 행렬, 백터 가능

a <- 1:3
b <- 4:6
a
b
a+b
a*b
a/b
a+10
a[4] <- 2
union(a,b) # 벡터 결합  : 합집합, 중복 X
c(a,b)     # 벡터 결합  : 합집합, 중복 O
setdiff(a,b)  # 차집합
b[4] <- 2
intersect(a,b) # 교집합

# -------------------------------
# matrix : 2차원 배열, 행렬 구조. 현대 수학에서는 행렬이 대세
a <- 1:8
dim(a) <- c(2,4)  # 행열을 만들때(matrix 생성)
a
dim(a)  # 구조 확인 
is(a)
class(a) 
mode(a)  # 데이타의 종류 확인

m <- matrix(1:5)
m
dim(m)

m <- matrix(1:9,nrow=3)  # 열 먼저 체우기
m
dim(m)

m <- matrix(1:9,nrow=3,byrow=T)  # 행먼저 체우기
m
dim(m)

m <- matrix(1:10,2) # nrow는 생략 가능 
m

m <- matrix(1:10,3) 
m

m[1,]  # 1행만 보여줌
m[,3]  # 3열만 보여줌
m[2,3] # 2행 3열만 보여줌
m[1,c(2:4)]
m[1:2,c(2:4)]
m[-1,] # 1행만 빼고
m[,-3] # 3열만 빼고
m[-1,-1] # 1행 1열만 빼고

a <- matrix(c(1:9),nrow=3, ncol=3)  # 메트릭스 만들떄 변수 등록
rownames(a) <- c('r1','r2',3)      # 열 이름주기
colnames(a) <- c('one','two','three') # 열 이름 주기
a
a['r1',]
ncol(a)
nrow(a)
dim(a)

a <- matrix(c(1,2,3,4),2,2)
a
b <- matrix(5:8,2)
b

a+b
a * b
a %*% b # 행렬 곱  1*5 + 3*6 1번째
        # 1* 7 + 3*8 2번째 
        # 2* 5 + 4* 6 3번째
        # 2* 7 + 4*8

diag(a)  # 주대각 요소 출력
a 
t(a)   # 전치  ***** 행과 열의 위치 바꿔주기

x1 <- c(5,40,50:52)
x1
x2 <- c(30,5,6:8)
x2
rbind(x1,x2) # 행으로 묶기
cbind(x1,x2) # 열로 묶기

# 함수를 실행하는 함수
# apply()   # lapply(), sapply(), tapply()
x <- matrix(1:9,3)
x
apply(x,1,max)  # 1: 행기중
apply(x,2,max)  # 2: 열기중
apply(x,2,mean) 

func <- function(x){
  x+c(5,10,15)
}

apply(x,1,func)  # 사용자정의 함수 실행

head(iris,2)
apply(iris[1:4],2,mean)

#---------------------------------
# array: 다차원 배열 - 행,열, 면을 같는 3차원 자료구조를 취할수 있다.
d <- c(1:12)
is(d)
arr1 <- array(d)
arr1
dim(arr1)
is(arr1)

arr2<- array(1:12,dim=c(6,2))
arr2
dim(arr2)

arr3<- array(1:12,dim=c(3,2,2))
arr3
dim(arr3)

#-------------------------------------
#list : 서로다른 타입의 데이터 자료구조.(키,값) 형태의 데이터를 담는 연과배열
li <- list("1","홍길동", 22, "2","고길동",32)
li
unli <- unlist  # 리스트 풀기
unli

num <-list(c(1:5),c(6:10),c("a","b","c"))
num
num[1]
typeof(num[1]) # 타입은 리스트
num[[1]]
typeof(num[[1]])  # 타입은 인티저 

num2 <- list(x=1:5, y=6:10)
num2
num2$x
num2$y










