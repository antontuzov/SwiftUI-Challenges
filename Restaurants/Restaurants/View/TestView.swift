//
//  TextView.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import SwiftUI

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

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
