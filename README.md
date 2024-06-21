#  ByteCoin

![ByteCoin](Images/1.gif)

## About

Bitcoin price ticker. The app will give you the latest Bitcoin prices in all the popular, traded currencies, so you can track how well your Bitcoin investments are doing on the go.

## What i do

* Swift protocols and extensions. 
* Use URLSession to network and make HTTP requests.
* Parse JSON with the native Encodable and Decodable protocols. 
* Use Grand Central Dispatch to fetch the main thread. 

### Parse Codes
```
func parseJSON(_ data: Data) -> Double? {
        let decoder = JSONDecoder()
        do {
            let decoderData = try decoder.decode(CoinData.self, from: data)
            let lastPrice = decoderData.rate
            return lastPrice.round(to: 2)
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
```

### Technologies Stack:
<p align="left">
<img src="https://img.shields.io/badge/Xcode%2014.2-blue" />
<img src="https://img.shields.io/badge/Swift%205-violet?label=SDK%20version&color=fedcba" />
<img src="https://img.shields.io/badge/MVC-orange" />
</p>