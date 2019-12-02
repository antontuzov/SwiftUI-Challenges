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
    
    var body: some View {
        List {
            ForEach(orders) { order in
                HStack(spacing: 10) {
                    Image(order.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50.0, height: 50.0)
                        .cornerRadius(8)
                    VStack(alignment: .leading, spacing: 10) {
                        Text(order.title)
                            .font(.system(size: 17, weight: .heavy, design: .default))
                        HStack(spacing: 10) {
                            Text(order.minute)
                                .foregroundColor(Color.labelBackground)
                                .modifier(TagModifier())
                            Spacer()
                            Text("$16")
                                .font(.system(size: 17, weight: .heavy, design: .default))
                        }
                    }
                }.background(Color(red: 242, green: 242, blue: 247, opacity: 1.0))
            }
        }
        .frame(height: 250)
        .disabled(true)
    }
}

//struct OrderListView_Previews: PreviewProvider {
//    static var previews: some View {
//        OrderListView()
//    }
//}
