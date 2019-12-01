//
//  FoodListModel.swift
//  Restaurants
//
//  Created by Abservetech on 28/11/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import Foundation

struct FoodDetails : Identifiable {
    var id = UUID()
    var name : String
    var price : String
    var isSelected : Bool
    var imageName : String {
        return name
    }
}

#if DEBUG
let testFoodDetails = [
    FoodDetails(name: "Burger", price: "10",isSelected : true),
    FoodDetails(name: "Chicken-65", price: "20",isSelected : false),
    FoodDetails(name: "FishFry", price: "30",isSelected : true),
    FoodDetails(name: "Pizza", price: "40",isSelected : false),
    FoodDetails(name: "Burger", price: "10",isSelected : false),
    FoodDetails(name: "Chicken-65", price: "20",isSelected : false),
    FoodDetails(name: "FishFry", price: "30",isSelected : false),
    FoodDetails(name: "Pizza", price: "40",isSelected : true),
    FoodDetails(name: "Burger", price: "10",isSelected : false),
    FoodDetails(name: "Chicken-65", price: "20",isSelected : false),
    FoodDetails(name: "FishFry", price: "30",isSelected : false),
    FoodDetails(name: "Pizza", price: "40",isSelected : false),
    FoodDetails(name: "Pizza", price: "40",isSelected : false),
    FoodDetails(name: "Burger", price: "10",isSelected : false),
    FoodDetails(name: "Chicken-65", price: "20",isSelected : false),
    FoodDetails(name: "FishFry", price: "30",isSelected : false),
    FoodDetails(name: "Pizzassss", price: "40",isSelected : false)
    
]
#endif
