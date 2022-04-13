# 데이터 입출력
n <- scan()   # 키보드로 자료 입력
sum(1:n)

ss <- scan(what ="")
ss

df <-data.frame()
df <- edit(df)
df

# 파일 읽기
student <- read.table("testdata/student.txt")
student
is(student)

student2 <- read.table("testdata/student2.txt",sep=";",header=TRUE) # ;로 갈라저 있는거 없에고 첫 라인이 열의 이름을 나타낼떄 header=true
student2

student3 <- read.table("testdata/student3.txt", sep =" ", header = TRUE, na.strings = '-')  # - 으로 써저 있는 데이타를 NA로 바꾼다
student3

student4 <- read.table("testdata/student4.txt", sep = ",", header = TRUE ,na.strings = '-')
student4

student5 <- read.csv("testdata/student4.txt", header = TRUE ,na.strings = '-')
student5

# 엑셀 파일 읽기 위해 xlsx package 읽어오기
install.packages("xlsx")
library(xlsx)
student6 <- read.xlsx(file="testdata/student.xlsx",sheetIndex = 1, encoding = 'UTF-8')
student6

#---------------------------------------------------------
# 데이터 출력
x<- 10; y<-20; z<-x* y
cat("결과는 ", z, '입니다다')
print(z)

cat(x,y,z)
print(x,y,z) # print는 하나의 정보만 찍을떄 사용!

# 파일로 출력
name <- c("관우","장비","유비")
age <-c(35,33,27)
gender<- c("남","남","여")
myframe<-data.frame(name,age,gender)
myframe

write.table(myframe,"output/my1.txt",fileEncoding = 'UTF-8')
write.table(myframe,"output/my2.txt", row.names = TRUE, fileEncoding = 'UTF-8')
write.table(myframe,"output/my3.txt", row.names = FALSE, fileEncoding = 'UTF-8')
write.table(myframe,"output/my4.txt", row.names = FALSE, quote = F,fileEncoding = 'UTF-8')

write.csv(myframe,"output/my5.txt",quote = F,row.names = FALSE,fileEncoding = 'UTF-8' )

write.xlsx(myframe,"output/my6.xlsx" , sheetName = 'Sheet1')

# -----------------------------------
# 돗수분포표
df <- read.csv("testdata/ex_studentlist.csv")
df 
str(df)
summary(df)

# 명목형 자료로 돗구분포표: gender, bloodtype  - 명목형 자료이기 때문에 빈도수 구하기가 가능하다!
# freq <- table(df$gender, df$bloodtype)
freq <- table(df$bloodtype)
freq

rfreq <- prop.table(freq) # 상대(비율) 도수
rfreq

rtable <- rbind(freq,rfreq)
rtable

rtable <- addmargins(rtable, margin=1)  # 소계가 추가적으로 들어간다 margin =1 을 넣어주면 열의 합도 나온다 # 1열의 합, 2 행의 합합
rtable









