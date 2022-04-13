# 제어문
# 조건 판단문 if
x <-  10; y <- 5

if(x+y >= 10){
  cat("결과는",x +y)
  cat("\n참일떄 수행")
}else if(x+y >= 5){
  cat("결과는",x+y)
}else{
  print("거짓일 때 수행")
}

ifelse(x>= 5,'참', '거짓')

install.packages("ggplot2")
library(ggplot2)

utils::head(mpg,2)
is(mpg)
mpg <- as.data.frame(ggplot2::mpg) # ggplot2가 가지고 있다는 출처 보여주기 
head(mpg,2)
?mpg
summary(mpg)  # 요약 통계형
str(mpg) #구조 확인

mpg$total  # or mpg$total  <- data frame 이기 때문에 가능
mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg,2)

if(mean(mpg$total) >= 20){
  print("우수 연비")
}else{
  print("보토연비")
}

summary(mpg$total)  # total 콜럼의 요약 통계
hist(mpg$total)

mpg$grade <- ifelse(mpg$total >= 25,'A',ifelse(mpg$total >=15,'B','C'))
head(mpg,20)

# 조건판단문 switch
# switch(비교구문,실행1, 실행 2 ...)
switch ("age",id="hong",age=33,name="홍길동")  # age 가 2번쨰에 있어서 33 리턴

a <- 1
switch (a, mean(1:10),max(1:10))  # a 가 1 이기 때문에 첫번째 실행문 실행


# 조건판단문 which: 벡터를 대상으로 특정 데이터를 검색
name <- c("kor","eng","mat","kor")
name
which(name=="kor")   # kor 에 해당하는 값 리턴 해서 1, 4 리턴


#----------------------------------------
# 반복문: for, while, repeat
# 반복문 for
i <- 1:10
for (n in i){
  print(n)
}
# 구구단 
for (su in 1:9){
  res = 2 * su
  cat(2,'*',su,'=',res,'\n')
}

# 반복문 while
i <- 0
while(i <10){
  i = i +1
  print(i)
}

i <- 0
while(TRUE){
  i = i + 1
  print(i)
  if(i == 3) break
}

#반복문 repeat
cnt <- 1
repeat{
  print(cnt)
  cnt = cnt + 2
  if(cnt > 10) break
}

























