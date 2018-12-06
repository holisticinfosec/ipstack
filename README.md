# ipstack
This R function uses the free ipstack.com geocoding service to resolve an IP address (or a vector of them) into country, region, city, zip, latitude, longitude, area and metro codes.   
The original function, created by [Heuristic Andrew](https://heuristically.wordpress.com/2013/05/20/geolocate-ip-addresses-in-r/), utilized freegeoip which has become [ipstack](https://ipstack.com).   
The freegeoip function has been updated to utilize ipstack accordingly.   
**Note:** You will need an [ipstack API key](https://ipstack.com/product) to utilize the service.   
You can call the service with your API key in the GET request and hard code it in your script.  
Alternatively, assign the API key as a variable in .Renviron.
