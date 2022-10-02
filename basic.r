R
## 데이터구조
# 벡터, 행렬, 데이터프레임

### 벡터 다루기
## 숫자를 벡터에 생성하기
# 자료를 화면에서 입력 받고 싶을때,
scan("data")
# 자료를 조합해서 벡터를 생성하고 싶을 때,
c(1,2,3,4)
c("yes","no")
# 두 변수 사이에 일정한 간격으로 (수치적 수열)을 만들고 싶을 때,
seq(-pi,pi,5) # 등간격의 5개의 수열
# 자료를 반복해서 벡터를 생성하고 싶을 때,
rep(NA, 5) # NA를 5번 반복
rep(c(1,2), 3) # 1,2를 3번 반복
# 사이에 값을 순차적으로 만들고 싶을 때,
1:5 # 1~5까지 순열
## 벡터 수정하거나 일부만 갖고 오고 싶을 때,
vec<-c(1,2,3,4,5) # 예
vec[2] # 두번째 자료
vec[c(2,3,5)] # 2,3,4의 값만 표현
vec[vec>2] # 2보다 큰 값만 표현
## 벡터 값을 변경/추가하고 싶을 때,
replace(vec, 3, 2) # vec의 3번째 자료를 2로 변경
append(vec, 8,5) # vec의 5번째 자료다음에 8을 삽입

## 행렬 다루기
# 행(row →), 열(column ↓) 구분하기
# 행렬을 생성하고 싶을 때,
matrix(1:9, nrow=3) # 3개의 행(row)으로 행렬을 만들어라
matrix(c(1,4,7,2,5,8,3,6,9), byrow=T, ncol=3) # 원래는 열(column)방향으로 먼저 데이터가 들어가는데 행(row)방향으로 데이터를 지정해라
# 행렬 계산하기
t(A) # 전치행렬 구하기
A%*%B # 행렬의 곱셈
crossprod(A,B) # 전치행렬을 구한다음 행렬곱셈
solve(A,B) # AX=B 일때 X구하기
slove(A) # A의 역행렬구하기
eigen(A) # 고유치와 고유벡터 함수구하기
chol(A) # Choleski 분해함수 구하기

## 배열 다루기
# 배열은 행렬이 여러개 모아진것으로 생각하기
# 배열을 생성하고 싶을때,
array(1:6, c(2,3)) # 1~6의 자료로 2차원 배열 생성하기
array(1:8, 1:8, c(2,2,2)) # 1~8의 자료로 3차원 배열 생성하기
array < - c(1:24)
dim(arr) <-c(3,4,2) # 행렬을 생성하는 함수 dim()을 이용하여 3행, 4열의 2개 행렬수를 생성

## 리스트 다루기
# 리스트는 다른 형태의 자료를 포함하는 하나의 객체(데이터 종류가 여러가지 일때 리스트로 사용)

a<-1:10
b<-11:15
# 리스트를 생성하고 싶을 때,
klist <-list(vec1=a, vec2=b, descrip="example")
length(klist) # klist 자료의 갯수 : 3개
mode(klist) # klist 자료의 형태: list
names(klist) # klist 각 구성요소의 이름: "vec1", "vec2", "descrip"
# 리스트를 호출하고 싶을 때,
exm<-list(c("Abe", "Bob", "Carol", "Deb"), c("Weight", "Waist"))
exam[[2]] # 리스트의 두번째 성분: "Weight", "Waist"
exam[[2]][2] # 2번째 성분 2번째 원소: "Waist"

## 데이터프레임 다루기
# 외부 텍스트 파일을 불러들이고 싶을 때,
read.table()
# 여러 종류의 자료객체들을 서로 결함하고 싶을 때,
data.frame() 
# 여러 종류의 다른 형태의 자료객체들을 데이터 프레임 형태로 변환하고 싶을 때,
as.data.frame() 

## 연산자 다루기
# 기본연산: %/% 정수 나눗셈, %*% 행렬의 곱
# 비교연산: <=, >= 크거나 작거나 같음
# 논리연산: && 일반적인 and 논리연산자, & 벡터에서 and 논리연산자, || 일반적인 or 논리연산자, | 벡터에서 or 논리연산자, ! not 연산자

## 기본함수
# 수치적 함수
range(x) # 벡터의 범위 c(min(x), max(x))와 같음
pmin(x1, x2) # 벡터들의 대칭되는 원소들 사이의 최소값
pmax(x1, x2) # 벡터들의 대칭되는 원소들 사이의 최대값

# 그래프 함수
plot(x,y) # 산점도
pie(x1) # 파이차트
hist(x1) # 히스토그램
barplot(x1) # 막대그림
stem(x1) # 줄기잎그림
boxplot(x1) # 상자그림

# 빅데이터 분석위한 패키치
library(bigmemory)
library(biglm)
library(biganalytics)

big.example <- as.big.matrix(as.matrix(example))
lm1<- y~var1+var2+var3+var4+var5+var6+var7


# 테이블을 예쁘게 그리고 싶을 때,
library(knitr)
kable(head(auto,10), align = ("c"))

# 에러모음
read.table: 중복되는 'row.names'의 값은 허용되지 않습니다 -> header에 index 갯수와 raw 갯수가 일치하지 않을 수 있다.

# glm() vs. lm() 함수의 차이
lm(): 회귀분석이나 분산분석은 종속변수가 정규분포되어 있는 연속형변수이다. 하지만, 종속변수가 정규분포되어 있다는 가정이 아니거나, 범주형 변수인경우에는 선형모형을 쓸수가 없다.
glm(): 종속변수가 연속변수가 아니거나 정규성을 띄지 않을때 사용한다.

### 정규성 검정 방법
## mpg변수의 정규성 검정
# 1.Shapiro-Wilk test
shapiro.test(mpg) 
# 2.Normal QQ plot
qqnorm(mpg) 
qqline(mpg) # QQ plot에 qqline 그리기
# 3.Anderson-Darling test
library(nortest)
ad.test(mpg)
# 해석: 다중선형회귀분석을 시행하기 위하여 mpg 변수의 정규성을 검정하였다. Shapiro-Wilk test 결과 p-value가 매우 작은 값으로 mpg는 정규분포를 벗어남을 알 수 있었다. Normal QQ plot에서도 점들이 QQ line을 벗어남을 알 수 있어서 정규성을 벗어남을 알 수 있다. Anderson-Darling normality test에서도 p-value가 매우 작아 정규성이 작은 것을 알 수 있다.

## glm()함수를 이용하여 다중선형회귀분석 실시
fit_glm <- glm(mpg~cylinders + displacement + horsepower + weight, data = auto)
fit.step<-step(fit_glm,direction = "backward") # 변수를 backward 방법으로 선택
summary(fit.step)

## glm()함수를 이용하여 다중선형회귀분석 실시
fit_lm <- lm(mpg~cylinders + displacement + horsepower + weight, data = auto)
fit.step<-step(fit_lm,direction = "backward")
summary(fit.step)
```

# if 문 간단하게 만들고 싶을 때, 
mpg01 = ifelse(mpg>mean(mpg),1,0)
fit_lr <-glm(mpg01~cylinders + displacement + horsepower + weight, data = auto)

## confusion matrix 만들고 싶을 때,
# 예측값과 실제값 할당
predicted <- as.factor(ifelse(fitted(fit_lr)>0.5,1,0))
actual <- as.factor(mpg01)
# Confusion Matrix 그리기
library(caret)
confusionMatrix(predicted, actual)

# 현재 워킹디렉토리를 알고 싶을 때,
getwd()

# 테이블
# 테이블의 앞 10개만 출력하고 싶을 때,
head(table_name, 10)
# 테이블에서 결측치를 제거하고 싶을 때,
table_name <- na.omit(auto)

library(caret)
confusionMatrix(predicted, actual)
