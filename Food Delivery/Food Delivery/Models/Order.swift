//
//  Order.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 02/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct Order: Identifiable {
    var id: String = UUID().uuidString
    var image, title, count: String
    
    static func getOrders() -> [Order] {
        let order1 = Order(image: "res1", title: "Autumn Soup", count: "1X")
        let order2 = Order(image: "res2", title: "Salad", count: "1X")
        let order3 = Order(image: "res3", title: "Salmon Sushi", count: "1X")
        let order4 = Order(image: "res4", title: "Parota", count: "1X")
        let order5 = Order(image: "res5", title: "Biriyani", count: "1X")
        return [order1, order2, order3, order4, order5]
    }
}
