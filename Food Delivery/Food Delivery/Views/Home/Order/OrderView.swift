//
//  OrderView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 01/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        VStack(spacing: 30) {
            OrderHeaderView()
            OrderListView(orders: Order.getOrders())
            OrderFooterView()
        }.padding(.top, 30)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
