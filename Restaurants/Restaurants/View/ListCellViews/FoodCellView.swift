//
//  FoodCellView.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

struct FoodCell : View {
    var foodcellData : FoodDetails
    var body : some View{
            HStack{
                Image(foodcellData.imageName)
                .frame(width: 60, height: 60, alignment: .center)
                .scaledToFill()
                .cornerRadius(15)
                    .padding([.top,.bottom],5)
                    .padding([.leading],10)
                
                
                VStack(alignment: .leading){
                    Text("x 1").foregroundColor(Color.secondary).font(.system(size: 15)).padding([.top],12)
                    Spacer()
                    HStack{
                        Text(foodcellData.name).fontWeight(.heavy).font(.system(size: 15))
                        Spacer()
                        Text("$ \(foodcellData.price)").bold().foregroundColor(Color.secondary)
                    }.padding([.bottom],12)
                    
                }.padding(8)
           
            }.background(Color.white)
    }
}
