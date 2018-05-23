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
          "C:\\oraclexe\\app\\oracle\\product\\11.2.0\\server\\jdbc\\lib\\ojdbc6.jar")

#커넥션을 이어준다.
conn <- dbConnect(drv, "jdbc:oracle:thin:@//bigshort.homedns.tv:1521/xe", "bigshort", "bigshort4800")

query <- "SELECT * FROM namgu"

namgu<-dbGetQuery(conn, query)

View(namgu)
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
test_2_combo <- gvisComboChart(test_2,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

# 한글 깨짐 해결
header <- test_2_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
test_2_combo$html$header <- header
plot(test_2_combo)

# 매매건 최소값 하위 10개 출력
# 현재 데이터에서는 의미 없음
test_3 <- gwangsan %>% filter(DEAL == "매매") %>% group_by(DONGNAME) %>% summarise(pricemin=min(PRICE)) %>%arrange(desc(pricemin)) %>% tail(10)
View(test_3)

#----- 남구 -------
namgu1 <- namgu%>%filter(DEAL == "매매") %>% group_by(DONGNAME) %>% summarise(pricemax = max(PRICE), pricemin = min(PRICE), pricemean = mean(PRICE))
View(namgu1)

namgu1_combo <- gvisComboChart(namgu1,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu1_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu1_combo$html$header <- header
plot(namgu1_combo)

#노대동
namgu2 <- namgu %>% filter(DEAL == "매매",DONGNAME=="노대동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu2)

namgu2_combo <- gvisComboChart(namgu2,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu2_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu2_combo$html$header <- header
plot(namgu2_combo)

#방림동
namgu3 <- namgu %>% filter(DEAL == "매매",DONGNAME=="방림동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu3)

namgu3_combo <- gvisComboChart(namgu3,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu3_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu3_combo$html$header <- header
plot(namgu3_combo)

#백운동
namgu4 <- namgu %>% filter(DEAL == "매매",DONGNAME=="백운동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu4)

namgu4_combo <- gvisComboChart(namgu4,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu4_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu4_combo$html$header <- header
plot(namgu4_combo)

#봉선동
namgu5 <- namgu %>% filter(DEAL == "매매",DONGNAME=="봉선동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu5)

namgu5_combo <- gvisComboChart(namgu5,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu5_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu5_combo$html$header <- header
plot(namgu5_combo)

#서동
namgu6 <- namgu %>% filter(DEAL == "매매",DONGNAME=="서동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu6)

namgu6_combo <- gvisComboChart(namgu6,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu6_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu6_combo$html$header <- header
plot(namgu6_combo)

#송하동
namgu7 <- namgu %>% filter(DEAL == "매매",DONGNAME=="송하동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu7)

namgu7_combo <- gvisComboChart(namgu7,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu7_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu7_combo$html$header <- header
plot(namgu7_combo)

#양림동
namgu8 <- namgu %>% filter(DEAL == "매매",DONGNAME=="양림동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu8)

namgu8_combo <- gvisColumnChart(namgu8,options = list(legend="top"))

header <- namgu8_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu8_combo$html$header <- header
plot(namgu8_combo)

#월산동
namgu9 <- namgu %>% filter(DEAL == "매매",DONGNAME=="월산동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu9)

namgu9_combo <- gvisComboChart(namgu9,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu9_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu9_combo$html$header <- header
plot(namgu9_combo)

#주월동
namgu10 <- namgu %>% filter(DEAL == "매매",DONGNAME=="주월동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu10)

namgu10_combo <- gvisComboChart(namgu10,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu10_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu10_combo$html$header <- header
plot(namgu10_combo)

#지석동
namgu11 <- namgu %>% filter(DEAL == "매매",DONGNAME=="지석동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu11)

namgu11_combo <- gvisColumnChart(namgu11,options = list(legend="top"))

header <- namgu11_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu11_combo$html$header <- header
plot(namgu11_combo)

#진월동
namgu12 <- namgu %>% filter(DEAL == "매매",DONGNAME=="진월동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu12)

namgu12_combo <- gvisComboChart(namgu12,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu12_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu12_combo$html$header <- header
plot(namgu12_combo)

#행암동
namgu13 <- namgu %>% filter(DEAL == "매매",DONGNAME=="행암동") %>% group_by(APTNAME) %>% summarise("최대값" = max(PRICE),"최소값"=min(PRICE),"평균값"=mean(PRICE))
View(namgu13)

namgu13_combo <- gvisComboChart(namgu13,options = list(seriesType="bars",legend="top", series = "{2:{type:'line'}}"))

header <- namgu13_combo$html$header
header <- gsub("charset=utf-8", "charset=euc-kr", header)
namgu13_combo$html$header <- header
plot(namgu13_combo)
