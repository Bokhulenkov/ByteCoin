//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

protocol CoinManagerDelegate {
    func didFailWithError(error: Error)
    func didUpdateCurrency()
}

struct CoinManager {
    
    var delegate: CoinManagerDelegate?
    
    private let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC/"
    
    private let apiKey = "3890A0E6-E699-40E9-B200-C42E8278DF78"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
     func fetchCurrency(idCurrency: String) {
        let urlString = "\(baseURL)\(idCurrency)?apikey=\(apiKey)"
        getCoinPrice(for: urlString)
    }
    
    // MARK: - Обработка url
    
    func getCoinPrice(for currency: String) {
        if let url = URL(string: currency) {
            let urlSessions = URLSession(configuration: .default)
            let task = urlSessions.dataTask(with: url) { data, response, error in
                if error != nil {
                    delegate?.didFailWithError(error: error!)
                } else {
                    if let safeData = data {
                        let stringData = String(data: safeData, encoding: .utf8)
                        print(stringData)
                    }
                }
            }
            task.resume()
        }
    }

    // MARK: - Парсер
    
    
    
}

