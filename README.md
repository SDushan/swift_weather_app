# Swift Weather Application

Sample weather application developed using Swift & [OpenWeatherMap]( https://openweathermap.org/api) which displays the data of weather for current location using GPS & also able to search data for specific city.

<img src="https://user-images.githubusercontent.com/10815317/141654593-33d0e1d8-b6dc-4550-84bf-ac4e6e28babe.png" width="400"> <img src="https://user-images.githubusercontent.com/10815317/141654602-46c2815a-0b71-4338-8169-638d70632f92.png" width="400">

## Available Features
* Support dark mode
* Handle UITextField
* HTTP request with URLSession
* JSON parse with JSONDecoder
* Support AutoLayout
* Request user permission to access location
* Use CoreLocation to get GPS data

## Setup instructions
Before run the project, you need to signIn & get an API key from OpenWeatherMap. Then change weatherURl inside weatherManager file with your API key.
```
let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid={API_Key}&units=metric"
```
