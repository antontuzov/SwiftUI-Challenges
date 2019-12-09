//
//  LiveTrackingView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 04/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI
import MapKit
import PartialSheet

struct LiveTrackingView: View {
    @State private var modalPresented: Bool = true
    @State private var longer: Bool = false

    var body: some View {
        ZStack(alignment: .center) {
            MapView()
                .edgesIgnoringSafeArea(.top)
            Button(action: {
                print("Current Location button")
            }) {
                Image(systemName: "location")
                    .frame(width: 40, height: 40, alignment: .bottomTrailing)
                    .padding()
            }
            Button(action: {
                self.modalPresented = true
            }, label: {
                Text("Open Half Modal Screen")
                    .fontWeight(.heavy)
            })
        }
        .partialSheet(presented: $modalPresented) {
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Delivery Time")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.gray)
                        Spacer()
                        Image(systemName: "envelope")
                            .padding([.leading, .top, .trailing, .bottom], 8)
                            .background(Color.labelBackground)
                            .font(.system(size: 12, weight: .light, design: .default))
                            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.labelBackground, lineWidth: 2))
                        HStack {
                            Button(action: {
                                print("Call button tapped")
                            }) {
                                HStack(spacing: 10) {
                                    Image(systemName: "phone")
                                        .foregroundColor(Color.white)
                                    Text("Call")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(5)
                                        .foregroundColor(Color.white)
                                }
                            }
                            .frame(minWidth: 80)
                            .background(Color.buttonColor)
                            .cornerRadius(8)
                        }
                    }.padding([.leading, .top, .trailing], 30)
                    HStack(spacing: 10) {
                        Image(systemName: "clock")
                        Text("13 Min")
                            .font(.system(size: 28, weight: .bold, design: .default))
                    }.padding([.leading, .trailing], 30)
                    OrderStatusListView(status: Status.getOrderStatus())
                }
                .frame(height: 370)
                if self.longer {
                    VStack {
                        Text("Expanded View")
                    }
                    .frame(height: 600)
                }
            }
        }
    }
}

struct LiveTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        LiveTrackingView()
    }
}
