//
//  OrderStatusListView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 09/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct OrderStatusListView: View {
    var status: [Status]
    
    var body: some View {
        List {
            ForEach(status) { orderStatus in
                VStack(spacing: 10) {
                    HStack(spacing: 10) {
                        Image(systemName: "checkmark.circle")
                            .frame(width: 25, height: 25)
                            .background(Color.tableViewGroupColor)
                            .cornerRadius(12.5)
                        VStack(alignment: .leading, spacing: 5) {
                            Text(orderStatus.title)
                                .font(.headline)
                            Text(orderStatus.subTitle)
                                .font(.body)
                        }
                    }.padding([.top, .bottom], 15)
                    .padding(.leading, 10)
                }
            }
        }
    }
}

struct OrderStatusListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderStatusListView(status: Status.getOrderStatus())
    }
}
