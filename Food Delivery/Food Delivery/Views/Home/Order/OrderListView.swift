//
//  OrderListView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 02/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var orders: [Order]
    
    init(orders: [Order]) {
        self.orders = orders
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        List {
            ForEach(orders) { order in
                HStack(spacing: 15) {
                    Image(order.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50.0, height: 50.0)
                        .cornerRadius(8)
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Text(order.title)
                                .font(.system(size: 17, weight: .heavy, design: .default))
                            Spacer()
                            Image(systemName: "xmark")
                                .font(.system(size: 10, weight: .regular, design: .default))
                        }
                        HStack(spacing: 5) {
                            Text(order.count)
                                .modifier(TagModifier())
                            Spacer()
                            Text("$16")
                                .font(.system(size: 17, weight: .heavy, design: .default))
                        }
                    }
                }
                .padding([.leading, .top, .trailing, .bottom], 15)
                .background(Color.tableViewGroupColor)
                .cornerRadius(8)
                .frame(height: 90)
            }
        }
        .frame(height: 300)
    }
}

//struct OrderListView_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderListView()
//    }
//}
