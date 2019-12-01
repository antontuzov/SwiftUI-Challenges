//
//  TabBarView.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        
        VStack{
            Spacer()
       
            HStack{
                Button(action: {
                    
                }, label: {
                    IconImage(imageName: "home", forgrondColor: .yellow, width: 50, height: 80)
                                  
                }).padding([.leading,.trailing],8).padding([.top],-20)
                Button(action: {
                                 
                }, label: {
                    IconImage(imageName: "bookmark", forgrondColor: .secondary, width: 50, height: 80)
                                               
                }).padding([.leading,.trailing],8).padding([.top],-20)
                Button(action: {
                                 
                }, label: {
                    IconImage(imageName: "magnifying_glas", forgrondColor: .primary, width: 50, height: 80)
                                               
                }).padding([.leading,.trailing],8)
               Button(action: {
                                
                }, label: {
                    IconImage(imageName: "notification", forgrondColor: .secondary, width: 50, height: 80)
                                              
                }).padding([.leading,.trailing],8).padding([.top],-20)
                
                Button(action: {
                                 
                }, label: {
                    IconImage(imageName: "man", forgrondColor: .secondary, width: 50, height: 80)
                                               
                }).padding([.leading,.trailing],8).padding([.top],-20)
                
                
                
              
            }
            .background(Color.white)
            .cornerRadius(40)
            .frame(height : 150)
            .padding([.leading,.trailing],-20)
            .padding([.top],35)
            .shadow(color: .gray, radius: 10)
        
            HStack{
                Image("add")
                .frame(width: CGFloat(66), height: CGFloat(66))
                .aspectRatio(contentMode: .fit)
                .background(Color.yellow)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .cornerRadius(33)
                .shadow(radius: 2)
                .foregroundColor(.white)
            }.padding([.top],-150)
        
        }.frame(height: 100)
        .background(Color.clear)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}




