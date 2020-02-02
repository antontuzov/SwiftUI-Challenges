//
//  OrderHeaderView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 02/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct OrderHeaderView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 80) {
            HStack {
                Button(action: {
                    print("Back button tapped")
                }) {
                    Image(systemName: "chevron.left")
                        .modifier(BarButtonModifier())
                }
                .background(Color.tableViewGroupColor)
                .cornerRadius(8)
                Spacer()
                Text("Order")
                    .font(.system(size: 25, weight: .medium, design: .default))
                Spacer()
                Button(action: {
                    print("Edit button tapped")
                }) {
                    Image(systemName: "pencil")
                        .modifier(BarButtonModifier())
                }
                .background(Color.tableViewGroupColor)
                .cornerRadius(8)
            }.padding([.leading, .trailing], 30)
            Text("$43.00")
                .font(.system(size: 46, weight: .heavy, design: .default))
                .padding(.bottom, 20)
        }
    }
}

struct OrderHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHeaderView()
    }
}
