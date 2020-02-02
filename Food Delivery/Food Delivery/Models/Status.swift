//
//  Status.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 09/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import Foundation
import SwiftUI

struct Status: Identifiable {
    var id: String = UUID().uuidString
    var title, subTitle: String
    var image: Image
    
    static func getOrderStatus() -> [Status] {
        let order1 = Status(title: "Order Confirmed", subTitle: "Your order has been received", image: Image(systemName: "xmark"))
        let order2 = Status(title: "Order Prepared", subTitle: "Your order has been prepared", image: Image(systemName: "xmark"))
        let order3 = Status(title: "Your Food Is Coming", subTitle: "The driver is coming to your place", image: Image(systemName: "xmark"))
        return [order1, order2, order3]
    }
}
