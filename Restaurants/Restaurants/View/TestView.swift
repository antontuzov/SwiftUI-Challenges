//
//  TextView.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI
// MARK :- Tabbar view
struct TestView: View {
    var body: some View {
           TabView {
            Text("Second View")
            .tabItem {
                Image(systemName: "2.circle")
                Text("Second")
            }.tag(0)
            
                 Text("First View")
                     .tabItem {
                         Image(systemName: "1.circle")
                         Text("First")
                     }.tag(1)
                 
           }.cornerRadius(10).background(Color.red)
    }
}


// MARK :- Geometerview

struct TestGeometerView : View {
    @State var size : CGSize = .zero
    @State var changeSize : CGFloat = 80
    var body: some View {
        GeometryReader{ reader in
            ZStack{
                VStack{
                    Color.green
                }.frame(width: reader.size.width - 80, height: 300)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .offset(y:-35)
                
                VStack{
                    Color.yellow
                }.frame(width: reader.size.width - self.changeSize , height: 300)
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(y:-15)
                
                VStack{
                    
                    Color.red
                }.frame(width: reader.size.width, height: 300)
                .cornerRadius(20)
                .shadow(radius: 20)
                    .gesture(DragGesture().onChanged({ (onchangeValue) in
                        
                        self.size = onchangeValue.translation
                        self.changeSize = 50
                    }).onEnded({ (onEndupValue) in
                       
                        self.size = .zero
                        self.changeSize = 80
                    })).offset(self.size)
            }.animation(.spring())
        }
    }
}












struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TestGeometerView()
    }
}



