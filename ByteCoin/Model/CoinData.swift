//
//  CoinData.swift
//  ByteCoin
//
//  Created by Alexander Bokhulenkov on 21.06.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

struct CoinData: Codable {
    let time: String
    let asset_id_base: String
    let asset_id_quote: String
    let rate: Double
}

