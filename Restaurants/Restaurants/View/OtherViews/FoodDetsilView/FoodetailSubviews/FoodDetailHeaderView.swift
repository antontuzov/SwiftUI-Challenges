//
//  FoodDetailHeaderView.swift
//  Restaurants
//
//  Created by Abservetech on 05/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

struct FoodDetailHeaderView: View {
    
    var fooddetails : FoodDetails
    
    var body: some View {
        ZStack{
            Image(fooddetails.imageName)
            .frame(height: 300)
            .shadow(radius: 10)
        }
    }
}

//struct FoodDetailHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        FoodDetailHeaderView(fooddetails: <#FoodDetails#>)
//    }
//}
