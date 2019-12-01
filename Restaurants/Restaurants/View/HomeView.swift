//
//  HomeView.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            RestaurantDetailView().padding([.bottom],-100)
            Spacer()
            TabBarView()
                .padding([.bottom],-16)
                .padding([.leading,.trailing],-20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
