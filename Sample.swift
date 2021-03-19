//
//  Sample.swift
//  ForbiddenSky
//
//  Created by Sarah Mae Campbell on 3/18/21.
//  Copyright © 2021 Sarah Mae Campbell. All rights reserved.
//

import Foundation

struct Sample {
    var item: String
    var cost: Double
    var quantity: Int
    var department: storeDepartment
    var costWTax: Double {
        let total = (cost * 1.0575) * Double(quantity)
        return total
    }
    enum storeDepartment {
        case sportingGoods, houseWares, grocery, pharmacy
    }
    mutating func order () {
        print("Your order of \(quantity) \(item) will be \(costWTax) and can be found in the \(department) department")
    }
}


