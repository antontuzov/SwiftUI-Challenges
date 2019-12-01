//
//  FoodLIst.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

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
//        .listStyle(GroupedListStyle())
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList(foodData: testFoodDetails)
    }
}
