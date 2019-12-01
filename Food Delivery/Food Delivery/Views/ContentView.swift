//
//  ContentView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 27/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 0
    let imageConfig = UIImage.SymbolConfiguration(weight: .heavy)
    
    var body: some View {
        TabView(selection: $selectedView) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }.tag(0)
            Text("Explore View")
                .tabItem {
                    Image(uiImage: UIImage(systemName: "magnifyingglass", withConfiguration: imageConfig)!)
                    Text("Explore")
                }.tag(1)
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }.tag(2)
        }.accentColor(.buttonColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
