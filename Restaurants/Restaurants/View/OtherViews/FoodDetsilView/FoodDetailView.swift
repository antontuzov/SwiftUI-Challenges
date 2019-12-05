//
//  FoodDetailView.swift
//  Restaurants
//
//  Created by Abservetech on 04/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

struct FoodDetailView: View {
    
    @EnvironmentObject var foodList : FoodListObservable
    
    
    var body: some View {
        VStack{
            ScrollView{
                    GeometryReader{ geo in
                        FoodDetailHeaderView(fooddetails: self.foodList.foodDetail[0])
                    }

                    Spacer()
                }
            
        }.statusBar(hidden : true)
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView()
    }
}
