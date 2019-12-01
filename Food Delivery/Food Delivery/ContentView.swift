//
//  ContentView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 27/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                WelcomeView()
                FavoriteBrandView(favoriteBrands: FavoriteBrand.getFavorites())
                    .padding([.leading, .trailing, .bottom], 20)
                    .background(Color(red: 0.965, green: 0.969, blue: 0.976))
                RestaurantView(restaurants: Restaurant.getRestaurants())
                    .padding(.top, 10)
                    .padding([.leading, .trailing], 20)
                TopTrendingView(topTrendings: TopTrending.getTopTrends())
                    .padding(.top, 10)
                    .padding([.leading, .trailing], 20)
            }
        }.environment(\.defaultMinListRowHeight, 80)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
