//
//  Extension.swift
//  ByteCoin
//
//  Created by Alexander Bokhulenkov on 21.06.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

extension Double {
    func round(to places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n *= precisionNumber
        n.round()
        n /= precisionNumber
        return n
    }
}
