//
//  OrderDeliveryView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 04/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct OrderDeliveryView: View {
    var body: some View {
        HStack {
            Text("Delivery Time")
            Spacer()
            Image(systemName: "xmark")
                .frame(width: 20, height: 20)
            Button(action: {
                
            }) {
                Image(systemName: "xmark")
                Text("Call")
            }
            .frame(width: 50, height: 30)
            .background(Color.buttonColor)
        }
    }
}

struct OrderDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDeliveryView()
    }
}
