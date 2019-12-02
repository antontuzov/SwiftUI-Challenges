//
//  RestaurantView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 29/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct RestaurantView: View {
    var restaurants: [Restaurant]
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(alignment: .center) {
                Text("Restaurants")
                    .font(.system(size: 21, weight: .bold, design: .default))
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                Button("See all") {
                    self.seeAllBtnTapped()
                }
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(Color.gray)
            }
            RestaurantCellView(restaurants: self.restaurants)
        }
    }
    
    private func seeAllBtnTapped() {
        print("Restaurant see all tapped")
    }
}

struct RestaurantCellView: View {
    var restaurants: [Restaurant]
    
    var body: some View {
        List {
            ForEach(restaurants) { restaurant in
                NavigationLink(destination: OrderView()) {
                    HStack(spacing: 10) {
                        Image(restaurant.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50.0, height: 50.0)
                            .cornerRadius(8)
                        VStack(alignment: .leading, spacing: 10) {
                            Text(restaurant.title)
                                .font(.system(size: 17, weight: .heavy, design: .default))
                            HStack(spacing: 5) {
                                HStack(spacing: 10) {
                                    Image(systemName: "star.fill")
                                        .frame(width: 12, height: 12)
                                        .foregroundColor(Color.yellow)
                                    Text("4.6 ")
                                        .font(.system(size: 13, weight: .heavy))
                                }
                                Text(restaurant.desc)
                                    .font(.system(size: 13, weight: .light, design: .default))
                            }
                        }
                    }
                }
            }
        }
        .frame(height: 250)
        .disabled(true)
    }
}

//struct RestaurantView_Previews: PreviewProvider {
//    static var previews: some View {
//        RestaurantView()
//    }
//}
