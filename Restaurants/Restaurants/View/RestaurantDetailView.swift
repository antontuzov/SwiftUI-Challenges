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
        
            ScrollView{
                VStack(alignment: .leading){
                    HStack{
                        TitleText(titleTxt: "Discover \nRestaurants", sizeTxt: 20,colorTxt: .primary)
                        Spacer()
                        IconImage(imageName: "magnifying_glass", forgrondColor: .red, width: 20, height: 20)
                    }.padding(15)
                    
                Image("res_image").frame(width: 350, height: 250, alignment: .center)
                    .background(Color.red)
                     .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.primary))
                    .shadow(color: .primary,  radius: 4,y: 3)
                    .cornerRadius(15, antialiased: true).padding(10)
                    .offset(y: -20)
                                                       
                    TitleText(titleTxt: "Other food", sizeTxt: 25).padding(.top,-40).padding(10)
                    
                FoodList(foodData: testFoodDetails).padding(.top,-20)
                    .frame(height: 500, alignment: .center)

                    }
        }.statusBar(hidden: true)

    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView()
    }
}




