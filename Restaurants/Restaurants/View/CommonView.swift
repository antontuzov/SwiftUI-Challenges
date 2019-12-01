//
//  CommonView.swift
//  Restaurants
//
//  Created by Abservetech on 28/11/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

// Mark :- create textview
struct TitleText: View {
    var titleTxt : String
    var sizeTxt : Float
    var colorTxt : Color?
    var body: some View {
        Text(titleTxt)
            .font(.system(size: CGFloat(sizeTxt))).bold().foregroundColor(colorTxt)
    }
}


// Mark :- create ImageView

struct IconImage : View {
    var imageName : String
    var forgrondColor : Color
    var width : Float
    var height : Float
    
    var body: some View{
        Image(imageName)
            .foregroundColor(forgrondColor)
            .frame(width: CGFloat(width), height: CGFloat(height))
            .aspectRatio(contentMode: .fit)
    }
}


struct CommonView_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(titleTxt: "Hello", sizeTxt: 20)
    }
}


struct CircleImage : View {
    var imageName : String
    var forgrondColor : Color
    var width : Float
    var height : Float
    
    var body: some View{
        Image(imageName)
            .foregroundColor(forgrondColor)
            .frame(width: CGFloat(width), height: CGFloat(height))
            .aspectRatio(contentMode: .fit)
            .overlay(Circle())
        
    }
}

struct NavigationHeaders {
     var body: some View{
        HStack{
             TitleText(titleTxt: "Discover \nRestaurants", sizeTxt: 20,colorTxt: .primary)
            Spacer()
            IconImage(imageName: "magnifying_glass", forgrondColor: .red, width: 20, height: 20)
        }
    }
}
