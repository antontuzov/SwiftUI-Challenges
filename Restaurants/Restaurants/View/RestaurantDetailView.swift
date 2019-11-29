//
//  RestaurantDetailView.swift
//  Restaurants
//
//  Created by Abservetech on 27/11/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

struct RestaurantDetailView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading){
                Image("res_image").frame(width: 350, height: 250, alignment: .center)
                    .background(Color.red)
                    .shadow(color: .red, radius: 10)
                    .cornerRadius(15, antialiased: true).padding(10)
                    .offset(y: -30)
                    TitleText(titleTxt: "Other food", sizeTxt: 25, colorTxt: .black).padding(.top,-40).padding(10)
                    
                FoodList(foodData: testFoodDetails).padding(.top,-20)
                    .frame(height: 500, alignment: .center)
//                Spacer()
                    }
            }
            .navigationBarItems(leading:
                TitleText(titleTxt: "Discover \nRestaurants", sizeTxt: 20, colorTxt: .black)
               
                ,trailing:
                    IconImage(imageName: "magnifying_glass", forgrondColor: .red, width: 20, height: 20)
                    
                )
        }.statusBar(hidden: true)
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView()
    }
}




//Food list View
struct FoodList : View {
    @State var foodData : [FoodDetails]
   
    var body : some View{
        List{
            ForEach(foodData) { food in
                FoodCell(foodcellData: food)
            }.onDelete { (indexSet) in
                self.foodData.remove(atOffsets: indexSet)
            }
        }.onAppear {
            UITableView.appearance().separatorStyle = .none
        }.onDisappear {
            UITableView.appearance().separatorStyle = .singleLine
        }
    }
}


struct FoodCell : View {
    var foodcellData : FoodDetails
    var body : some View{
        HStack{
            Image(foodcellData.imageName)
                .frame(width: 60, height: 60, alignment: .center)
                .aspectRatio(contentMode: .fill)
            .cornerRadius(15)
            VStack(alignment: .leading){
                Text("x 1").foregroundColor(Color.gray).font(.system(size: 15))
                Spacer()
                HStack{
                    Text(foodcellData.name).bold()
                    Spacer()
                    Text("$ \(foodcellData.price)").bold()
                }
            }.padding(4)

        }.padding(4)
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList(foodData: testFoodDetails)
    }
}
