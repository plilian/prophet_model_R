library(prophet)
time_series_file <- read.csv("filepath_to_original_file//time_series_file.csv")
modelA <- prophet(time_series_file)
futureA <- make_future_dataframe(modelA, periods = 10) #period in Days
tail(futureA) 
forecastprice <- predict(modelA, futureA)
tail(forecastprice[c('ds','yhat','yhat_lower','yhat_upper')])
write.csv(forecastprice,file="file_path_to_save_file//output.csv",fileEncoding = "UTF-8")
