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
    @EnvironmentObject var foodList : FoodListObservable
    @State var selectedindex : Int = -1
    var body : some View{
        List{
            ForEach(0..<self.foodList.foodDetail.count-1) { food in
                 HStack{
                    if self.selectedindexfun(index: food) {
                        
                        FoodCell(foodcellData: self.foodList.foodDetail[food]).cornerRadius(8)
                            .shadow(color: .gray, radius: 10, y: 10)
                            
                        .onTapGesture {
                           self.foodList.foodDetail[food].isSelected = true
                      }
                    }else{
                        FoodCell(foodcellData: self.foodList.foodDetail[food])
                            .onTapGesture {
                            self.foodList.foodDetail[food].isSelected = true
                        if self.selectedindex != -1{
                            self.foodList.foodDetail[self.selectedindex].isSelected = false
                        }else{
                            self.selectedindex = food
                        }
                      }
                    }
                }
            }.onDelete { (indexSet) in
                self.foodData.remove(atOffsets: indexSet)
            }
        }.environment(\.defaultMinListRowHeight, 80)
        .onAppear {
            UITableView.appearance().separatorStyle = .none
        }.onDisappear {
            UITableView.appearance().separatorStyle = .singleLine
        }
       // .listStyle(GroupedListStyle())
    }
    
    func selectedindexfun(index : Int)->Bool{
        
        if self.foodList.foodDetail[index].isSelected{
            self.selectedindex = index
            return true
        }else{
            return false
        }
        
    }
    
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList(foodData: testFoodDetails).environmentObject(FoodListObservable())
    }
}
