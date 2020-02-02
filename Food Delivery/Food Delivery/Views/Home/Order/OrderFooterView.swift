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
            HStack(spacing: 5) {
                Image(systemName: "tag")
                    .foregroundColor(Color.black)
                    .font(.system(size: 20, weight: .semibold, design: .default))
                    .padding([.top, .bottom], 5)
                    .padding(.trailing, 10)
                Text("Add Promo Code")
                    .font(.system(size: 15, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                Spacer()
                Button(action: {
                    print("Apply promo button tapped")
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.black)
                        .font(.system(size: 20, weight: .semibold, design: .default))
                        .padding([.leading, .top, .trailing, .bottom], 10)
                }
                .background(Color.tableViewGroupColor)
                .cornerRadius(15)
            }.padding([.leading, .trailing], 30)
            VStack(spacing: 5) {
                TextField("eg: 09VMZN1", text: $promoCode)
                Divider()
            }
            .padding([.leading, .trailing], 30)
            .padding(.bottom, 40)
            VStack(spacing: 20) {
                Button(action: {
                    print("Place Order button tapped")
                }) {
                    Text("Place Order")
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                        .font(.system(size: 21, weight: .medium, design: .default))
                        .background(Color.buttonColor)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Text("Or add more items")
                    .font(.system(size: 15, weight: .semibold, design: .default))
                    .foregroundColor(.buttonColor)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 140, alignment: .topLeading)
            .padding([.leading, .trailing], 30)
        }
    }
}

struct OrderFooterView_Previews: PreviewProvider {
    static var previews: some View {
        OrderFooterView()
    }
}
