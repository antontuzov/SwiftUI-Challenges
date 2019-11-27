//
//  ContentView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 27/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    FavoriteBrandView()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200, maxHeight: 200, alignment: .top)
                    }
                .background(Color(red: 0.965, green: 0.969, blue: 0.976))
                .navigationBarItems(leading: WelcomeView(), trailing: NavigationButtonView())
            }
        }
    }
}

struct WelcomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Hello,")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                Text("Vinoth")
                    .font(.system(size: 25))
                    .fontWeight(.heavy)
            }
            Image("girl")
                .resizable()
                .scaledToFit()
                .frame(width: 40.0, height: 45.0)
                .clipShape(Circle())
                .shadow(radius: 8)
        }.padding(EdgeInsets(top: 60, leading: 0, bottom: 0, trailing: 0))
    }
}

struct NavigationButtonView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Button(action: searchBtnTapped) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
            }
            Button(action: searchBtnTapped) {
                Image(systemName: "square.grid.2x2")
                    .foregroundColor(.black)
            }
        }
    }
    
    func searchBtnTapped() {
        print("Search button tapped")
    }
}

struct FavoriteBrandView: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("Favorite Brands")
                .font(.system(size: 30, weight: .heavy, design: .default))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
