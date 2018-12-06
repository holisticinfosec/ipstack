# ipstack
This R function uses the free ipstack.com geocoding service to resolve an IP address (or a vector of them) into country, region, city, zip, latitude, longitude, area and metro codes.   
The original function, created by [Heuristic Andrew](https://heuristically.wordpress.com/2013/05/20/geolocate-ip-addresses-in-r/), utilized freegeoip which has become [ipstack](https://ipstack.com).   
The freegeoip function has been updated to utilize ipstack accordingly.   
**Note:** You will need an [ipstack API key](https://ipstack.com/product) to utilize the service.   
You can call the service with your API key in the GET request and hard code it in your script.  
Alternatively, assign the API key as a variable in .Renviron.

**Usage**

```
# single IP
> ipstack("13.107.21.200")
$`ip`
[1] "13.107.21.200"

$type
[1] "ipv4"

$continent_code
[1] "NA"

$continent_name
[1] "North America"

$country_code
[1] "US"

$country_name
[1] "United States"

$region_code
NULL

$region_name
NULL

$city
NULL

$zip
NULL

$latitude
[1] 37.751

$longitude
[1] -97.822

$location
$location$`geoname_id`
NULL

$location$capital
[1] "Washington D.C."

$location$languages
$location$languages[[1]]
$location$languages[[1]]$`code`
[1] "en"

$location$languages[[1]]$name
[1] "English"

$location$languages[[1]]$native
[1] "English"

$location$country_flag
[1] "http://assets.ipstack.com/flags/us.svg"

$location$country_flag_emoji
[1] "\U0001f1fa\U0001f1f8"

$location$country_flag_emoji_unicode
[1] "U+1F1FA U+1F1F8"

$location$calling_code
[1] "1"

$location$is_eu
[1] FALSE

# multiple IPs, always returned as a data frame
> ipstack(c("13.107.21.200", "172.217.14.206"))
              ip type continent_code continent_name country_code  country_name latitude longitude location.capital
1  13.107.21.200 ipv4             NA  North America           US United States   37.751   -97.822  Washington D.C.
2 172.217.14.206 ipv4             NA  North America           US United States   37.751   -97.822  Washington D.C.
  location.languages.code location.languages.name location.languages.native                  location.country_flag
1                      en                 English                   English http://assets.ipstack.com/flags/us.svg
2                      en                 English                   English http://assets.ipstack.com/flags/us.svg
  location.country_flag_emoji location.country_flag_emoji_unicode location.calling_code location.is_eu
1    <U+0001F1FA><U+0001F1F8>                     U+1F1FA U+1F1F8                     1          FALSE
2    <U+0001F1FA><U+0001F1F8>                     U+1F1FA U+1F1F8                     1          FALSE
```
