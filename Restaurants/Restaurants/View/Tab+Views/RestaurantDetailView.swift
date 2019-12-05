//
//  RestaurantDetailView.swift
//  Restaurants
//
//  Created by Abservetech on 27/11/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI



let foodDataArray : [FoodDetails] = testFoodDetails

struct RestaurantDetailView: View {
    var body: some View {
        VStack{
            HStack(spacing: 10){
                TitleText(titleTxt: "Discover \nRestaurants", sizeTxt: 20,colorTxt: .primary)
                Spacer()
                IconImage(imageName: "magnifying_glass", forgrondColor: .red, width: 20, height: 20)
            }.padding(15)
            
            ScrollView{
                VStack(alignment: .leading){
                 
                    GeometryReader{ geo in
                       Image("res_image")
                            .shadow(color: .primary,  radius: 4,y: 3)
                          
                        .offset(y: geo.frame(in: .global).minY > 0 ? -geo.frame(in: .global).minY : 0)
                        .frame(height: geo.frame(in:.global).minY > 0 ? 250 + geo.frame(in: .global).minY : 250)
                        
                        
                    }.frame(height: 250).cornerRadius(15, antialiased: true).padding(10)
                                                         
                    TitleText(titleTxt: "Other food", sizeTxt: 25).padding(.top,1).padding(10)
                    
                    FoodList(foodData: testFoodDetails).environmentObject(FoodListObservable()).padding(.top,-20)
                        .frame(height: 500, alignment: .center)
                

                    }
            }
        }.statusBar(hidden: true)
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView()
    }
}




