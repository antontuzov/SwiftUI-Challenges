//
//  FavoriteBrand.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 01/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct FavoriteBrand: Identifiable {
    var id: String = UUID().uuidString
    var name, avatar: String
    var rating: Int
    
    static func getFavorites() -> [FavoriteBrand] {
        let favorite1 = FavoriteBrand(name: "Mc Donald's", avatar: "mcdonalds", rating: 4)
        let favorite2 = FavoriteBrand(name: "Taco Bell", avatar: "tacobell", rating: 2)
        let favorite3 = FavoriteBrand(name: "Starbucks", avatar: "starbucks", rating: 2)
        let favorite4 = FavoriteBrand(name: "Mc Donald's", avatar: "mcdonalds", rating: 3)
        return [favorite1, favorite2, favorite3, favorite4]
    }
}
