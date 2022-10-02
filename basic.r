R
# 테이블을 예쁘게 그리고 싶을 때,
library(knitr)
kable(head(auto,10), align = ("c"))

# 에러모음
read.table: 중복되는 'row.names'의 값은 허용되지 않습니다 -> header에 index 갯수와 raw 갯수가 일치하지 않을 수 있다.

# glm() vs. lm() 함수의 차이
lm(): 회귀분석이나 분산분석은 종속변수가 정규분포되어 있는 연속형변수이다. 하지만, 종속변수가 정규분포되어 있다는 가정이 아니거나, 범주형 변수인경우에는 선형모형을 쓸수가 없다.
glm(): 종속변수가 연속변수가 아니거나 정규성을 띄지 않을때 사용한다.

# 정규성 검정 방법


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
