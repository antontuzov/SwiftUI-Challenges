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
    @State private var setSelection = false
    var body : some View{
            HStack{
                Image(foodcellData.imageName)
                    .frame(width: 60, height: 60, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
                Button.init(action: {
                           self.setSelection = true
                }) {
                VStack(alignment: .leading){
                    Text("x 1").foregroundColor(Color.secondary).font(.system(size: 15))
                    Spacer()
                    HStack{
                        Text(foodcellData.name).bold()
                        Spacer()
                        Text("$ \(foodcellData.price)").bold().foregroundColor(Color.secondary)
                    }
                }
            }.padding(4)
            }.padding(4)
    }
}
