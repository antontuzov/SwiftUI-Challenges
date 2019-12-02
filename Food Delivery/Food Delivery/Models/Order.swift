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
    var image, title, minute: String
    
    static func getOrders() -> [Order] {
        let order1 = Order(image: "res1", title: "Autumn Soup", minute: "13 min")
        let order2 = Order(image: "res2", title: "Anjapar Restaurant", minute: "24 min")
        let order3 = Order(image: "res3", title: "Palmtree Restaurant", minute: "18 min")
        let order4 = Order(image: "res4", title: "Aasif Restaurant", minute: "1 hour")
        let order5 = Order(image: "res5", title: "Brindhavan Restaurant", minute: "2 hour")
        return [order1, order2, order3, order4, order5]
    }
}
