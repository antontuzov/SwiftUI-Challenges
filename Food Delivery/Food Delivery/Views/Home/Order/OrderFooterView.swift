//
//  OrderFooterView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 02/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct OrderFooterView: View {
    @State private var promoCode: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image("tag")
                    .foregroundColor(Color.black)
                    .font(.title)
                    .padding(5)
                Spacer()
                Button(action: {
                    print("Apply promo button tapped")
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black)
                        .font(.title)
                        .padding(5)
                }
                .cornerRadius(8)
                .background(Color(red: 242, green: 242, blue: 247, opacity: 1.0))
            }.padding([.leading, .trailing], 30)
            VStack {
                TextField("Enter your name", text: $promoCode)
                Divider()
            }
            VStack {
                Button(action: {
                    print("Place Order button tapped")
                }) {
                    Text("Place Order")
                        .font(.system(size: 21, weight: .medium, design: .default))
                }
                Text("Or add more items")
            }
        }
    }
}

struct OrderFooterView_Previews: PreviewProvider {
    static var previews: some View {
        OrderFooterView()
    }
}
