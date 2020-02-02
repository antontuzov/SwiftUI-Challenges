//
//  Restaurant.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 01/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id: String = UUID().uuidString
    var image, title, desc: String
    var rating: Int
    
    static func getRestaurants() -> [Restaurant] {
        let restaurant1 = Restaurant(image: "res1", title: "Big Tiger Restaurant", desc: "Italian Restaurant", rating: 4)
        let restaurant2 = Restaurant(image: "res2", title: "Mama Hot", desc: "Italian Restaurant", rating: 4)
        let restaurant3 = Restaurant(image: "res3", title: "Red Chilli", desc: "Italian Restaurant", rating: 4)
        let restaurant4 = Restaurant(image: "res4", title: "Big Tiger Restaurant", desc: "Italian Restaurant", rating: 4)
        let restaurant5 = Restaurant(image: "res5", title: "Big Tiger Restaurant", desc: "Italian Restaurant", rating: 4)
        return [restaurant1, restaurant2, restaurant3, restaurant4, restaurant5]
    }
}
