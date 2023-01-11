library(readxl)
stockprice <- read_excel("C:/Users/tharu/Desktop/R Programming/stockprice.xlsx")

fall_value<- stockprice$Wipro[1]- stockprice$Wipro[2]
fall_value

fallpercent<- (fall_value/stockprice$Wipro[1]) *100
fallpercent

recovery<- stockprice$Wipro[3]  - stockprice$Wipro[2]
recovery

recoverypercent <- (recovery/stockprice$Wipro[2]) *100
recoverypercent

pending = stockprice$Wipro[1] - stockprice$Wipro[3]
pending

pendingpercent <- (pending/stockprice$Wipro[1]) *100
pendingpercent

plot(stockprice$Wipro, type = "o", col = "red", xlim = c(0.5,3), ylim = c(120, 280))
lines(stockprice$ITC, type = "o", col = "blue", xlim = c(0.5,3),ylim = c(120,280))

plot(stockprice$`Tata Motors`, type = "o", col = "red", xlim = c(0.5,3), ylim = c(0, 250))
lines(stockprice$Gail, type = "o", col = "blue", xlim = c(0.5,3),ylim = c(0,250))


plot(stockprice$Reliance, type = "o", col = "red", xlim = c(0.5,3), ylim = c(700,1900))
lines(stockprice$`L&T`, type = "o", col = "blue", xlim = c(0.5,3), ylim = c(700,1900))
lines(stockprice$`Asian Paints`, type = "o", col = "green", xlim = c(0.5,3), ylim = c(700,1900))

plot(stockprice$SBI, type = "o", col = "red", xlim = c(0.5,3), ylim = c(150, 500))
lines(stockprice$`Sun Pharma`, type = "o", col = "blue", xlim = c(0.5,3),ylim = c(150,500))

plot(stocks_csv$`Fall %`, type = "o")
