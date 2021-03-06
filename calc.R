# 오칙연산
1+1
a <- 1
a
b <- 2
b
vec01 <- c(1,2,3,7)
vec01
vec02 <- c(1:5)
vec02
vec03 <- seq(1,5)
vec03
vec04 <- 1:5
vec04
vec05 <- seq(1L,10L, by=2)
vec05
class(vec05)
vec06 <- c("안","녕")
vec06
class(vec06)
vec06 <- 1:3
mean(vec06)
class(vec06)
## 5 + 7 더하기 로직을 구하시오
x <- 5
y <- 7
## 5 + 7 더하기 로직을 식까지 보이도록 구하시오
cat(x,"+",y,"=",x+y)
## 더하기 로직을 구하시오
plus <- function(x,y){return(x+y)}
plus(9,2)
minus <- function(x,y){return(x-y)}
minus(9,2)
multi <- function(x,y){return(x*y)}
multi(9,2)
divid <- function(x,y){return(x%/%y)}
plus(9,2)
remainder <- function(x,y){return(x%%y)}
plus(9,2)
## assignment <- : 할당
## branch : 분기문
## loop : 반복문 
## if - else 구문:: 함수 만들기 전
x = 20
op <- "+"
y = 3
if(op=="+")cat(x,op,y,"=",x+y)else
if(op=="-")cat(x,op,y,"=",x-y)else
if(op=="*")cat(x,op,y,"=",x*y)else
if(op=="/")cat(x,op,y,"=",x%/%y)else
if(op=="%")cat(x,op,y,"=",x%%y)else
  print("error")
## switch 구문:: 함수 만들기 전
x = 20
op <- "*"
y = 3
switch(
  op,
  "+"=cat(x,op,y,"=",x+y),
  "-"=cat(x,op,y,"=",x-y),
  "*"=cat(x,op,y,"=",x*y),
  "/"=cat(x,op,y,"=",x%/%y),
  "%"=cat(x,op,y,"=",x%%y),
  "error"
)

## if - else 구문:: 함수 
## 
calc <- function(x,op,y){
  res<-if(op=="+")x+y else
  if(op=="-")x-y else
  if(op=="*")x*y else
  if(op=="/")x%/%y else
  if(op=="%") x%%y else
    "error"
  return (cat(x,op,y,"=",res))
}
calc(2,"*",3)
calc(3,"*",3)
calc(4,"*",3)
calc(5,"*",3)
## switch 구문:: 함수 
calc <- function(x,op,y){
  res <-switch(
          op,
          "9"="A",
          "8"="B",
          "-"=x-y,
          "*"=x*y,
          "/"=x%/%y,
          "%"=x%%y,
          "error"
        )
  return (cat(x,op,y,"=",res))
}
ls()

rm(calc)


## 성적표 
# kor, eng, math, 총점, 평균
# grade(80,80,80)
# 총점:240 평균:80
grade <- function(kor, eng, math){
  sum <- kor+eng+math
  avg <- sum / 3
  return(cat("총점:",sum," 평균:",avg))
}
grade(10,10,10)

## 성적표 
# kor, eng, math, 총점, 평균
# grade(80,80,80)
# 총점:240 평균:80
# if - else, switch
# 평균 90 이상 A,80 이상 B,70 이상 C,60 이상 D,
# 50 이상 E, 그밖이면 F

grade_sw <- function(kor, eng, math) {
    sum <- kor+eng+math
    mean <- sum%/%3
    grade <- switch(
      toString(mean%/%10),
      '10' = "A",
      '9' = "A",
      '8' = "B",
      '7' = "C",
      '6' = "D",
      '5' = "E",
      "F"
    )
  return(cat("총점 : ",sum," 평균 : ",mean," 학점 : ",grade))
 
}












