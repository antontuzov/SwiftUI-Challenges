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
    var imageName : String {
        return name
    }
}

#if DEBUG
let testFoodDetails = [
    FoodDetails(name: "Burger", price: "10"),
    FoodDetails(name: "Chicken-65", price: "20"),
    FoodDetails(name: "FishFry", price: "30"),
    FoodDetails(name: "Pizza", price: "40"),
    FoodDetails(name: "Burger", price: "10"),
    FoodDetails(name: "Chicken-65", price: "20"),
    FoodDetails(name: "FishFry", price: "30"),
    FoodDetails(name: "Pizza", price: "40"),
    FoodDetails(name: "Burger", price: "10"),
    FoodDetails(name: "Chicken-65", price: "20"),
    FoodDetails(name: "FishFry", price: "30"),
    FoodDetails(name: "Pizza", price: "40"),
        FoodDetails(name: "Pizza", price: "40"),
        FoodDetails(name: "Burger", price: "10"),
        FoodDetails(name: "Chicken-65", price: "20"),
        FoodDetails(name: "FishFry", price: "30"),
        FoodDetails(name: "Pizzassss", price: "40")
    
]
#endif
