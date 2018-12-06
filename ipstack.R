ipstack <- function(ip, format = ifelse(length(ip)==1,'list','dataframe'))
{
  if (1 == length(ip))
  {
    # a single IP address
    require(rjson)
    url <- paste(c("https://api.ipstack.com/", ip,"?access_key=<Your ipstack API key goes here>"), collapse='')
    ret <- fromJSON(readLines(url, warn=FALSE))
    if (format == 'dataframe')
      ret <- data.frame(t(unlist(ret)))
    return(ret)
  } else {
    ret <- data.frame()
    for (i in 1:length(ip))
    {
      r <- ipstack(ip[i], format="dataframe")
      ret <- rbind(ret, r)
    }
    return(ret)
  }
} 
