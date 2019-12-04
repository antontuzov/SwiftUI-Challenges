//
//  LiveTrackingView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 04/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct LiveTrackingView: View {
    @State var showingOrderDelivery = false
    
    var body: some View {
        VStack(alignment: .center) {
            GeometryReader { geometry in
                MapView()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                Button(action: {
                    self.showingOrderDelivery.toggle()
                }) {
                    Text("Show Detail")
                        .font(.system(size: 30, weight: .heavy, design: .default))
                }.sheet(isPresented: self.$showingOrderDelivery) {
                    OrderDeliveryView()
                        .background(Color.orange)
                        .frame(width: geometry.size.width, height: geometry.size.height / 3)
                }
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct LiveTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        LiveTrackingView()
    }
}
