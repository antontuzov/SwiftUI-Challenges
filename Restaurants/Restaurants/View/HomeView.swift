//
//  HomeView.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

let tabsetTag = TabTag()

struct HomeView: View {
    var body: some View {

        VStack{
            SelectedView().environmentObject(tabsetTag)
            Spacer()
            TabBarView().environmentObject(tabsetTag)
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


struct SelectedView: View {
    @EnvironmentObject var selectedTag : TabTag
     var body: some View {
        
        switch selectedTag.selectedTag {
            case 0:
                return AnyView(RestaurantDetailView().padding([.bottom],-100))
            case 1:
                   return AnyView(OfferView())
            case 2:
                   return AnyView(NotificationView())
            case 3:
                   return AnyView(ProfileView())
            default:
                return AnyView(RestaurantDetailView().padding([.bottom],-100))
            }
        
       
    }
}



