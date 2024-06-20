#  ByteCoin

## About

It's app to check the weather for the current location based on the GPS data from the iPhone as well as by searching for a city manually. 

## What i do

* Create a dark-mode enabled app.
* Use vector images as image assets.
* Use the UITextField to get user input. 
* Swift protocols and extensions. 
* Use URLSession to network and make HTTP requests.
* Parse JSON with the native Encodable and Decodable protocols. 
* Use Grand Central Dispatch to fetch the main thread.
* Use Core Location to get the current location from the phone GPS. 

### Condition Codes
```
switch conditionID {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
```