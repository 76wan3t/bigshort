# R과 ORACLE 연동방법

install.packages("rJava")        #자바설치
install.packages("DBI")          #데이터베이스 인터페이스를 정의하는 규칙
install.packages("RJDBC")        #실질적으로 데이터베이스 실행시켜주는거.

library(DBI)                     #DBI를 먼저 불러오고
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre1.8.0_151')  #자바 환경설정

library(rJava)
library(RJDBC)

#드라이브를 로드해준다.
drv<-JDBC("oracle.jdbc.driver.OracleDriver",
          "C:\\oraclexe\\app\\oracle\\product\\11.2.0/server\\jdbc\\lib\\ojdbc6.jar")

#커넥션을 이어준다.
conn <- dbConnect(drv, "jdbc:oracle:thin:@//teno.homedns.tv:1521/xe", "bigshort", "bigshort4800")

query <- "SELECT * FROM gwangsan"

gwansan<-dbGetQuery(conn, query)

View(gwansan)
# 지수 해결
options(scipen = 99)

#====전처리=====
library(dplyr)
#테스트로 광산구 5개 동 매매건만 추출
test <- gwangsan %>% filter(DEAL=="매매", DONGNAME %in% c("도산동","도천동","산월동","비아동","산정동"))
# 필요없는 열 제거 ( DONGNO / SUBSIDY )
test <- test[,-c(1,5)]

#추출한 5개 동 최대 최소값 평균값 추출
test_1 <- test %>% group_by(DONGNAME)%>% summarise(pricemax = max(PRICE), pricemin = min(PRICE),pricemean = mean(PRICE))
View(test_1)

#googlevis 패키지 사용 
install.packages("googleVis")
library(googleVis)

#막대 그래프 출력 (웹에서 출력됨 )
test_giv <- gvisColumnChart(test_1)
plot(test_giv)

#막대 선 그래프 출력
test_combo <- gvisComboChart(test_1,options = list(seriesType="bars", series = "{2:{type:'line'}}"))
plot(test_combo)

#한글 깨짐 해결
header <- test_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
test_combo$html$header <- header

# 비아/ 산월 데이터 확인 ( 최소값이 그래프상에서 나타나지 않음 )
# 너무 작은 값이 들어와서 표시가 안됨
bia <- test %>% filter(DONGNAME == "비아동", DEAL == "매매")
View(bia)
san <- test %>% filter(DONGNAME == "산월동", DEAL == "매매")
View(san)

#동 전체 매매건 max, min, mean출력
test_2 <- gwangsan %>%filter(DEAL == "매매") %>% group_by(DONGNAME) %>% summarise(pricemax = max(PRICE), pricemin = min(PRICE), pricemean = mean(PRICE))
#데이터 확인
View(test_2)

#그래프 출력
test_2_giv <- gvisColumnChart(test_2)

#한글 깨짐 해결
header <- test_2_giv$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
test_2_giv$html$header <- header
plot(test_2_giv)

#막대 / 선 그래프 출력
test_2_combo <- gvisComboChart(test_2,options = list(seriesType="bars", series = "{2:{type:'line'}}"))

# 한글 깨짐 해결
header <- test_2_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
test_2_combo$html$header <- header
plot(test_2_combo)

# 매매건 최소값 하위 10개 출력
# 현재 데이터에서는 의미 없음
test_3 <- gwangsan %>% filter(DEAL == "매매") %>% group_by(DONGNAME) %>% summarise(pricemin=min(PRICE)) %>%arrange(desc(pricemin)) %>% tail(10)
View(test_3)