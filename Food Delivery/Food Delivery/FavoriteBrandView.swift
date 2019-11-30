//
//  FavoriteBrandView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 28/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct FavoriteBrandView: View {
    var titles = ["Mc Donald's", "Taco Bell", "Starbucks", "MC Donald's", "Taco Bell", "Starbucks"]
    var images = ["mcdonalds", "tacobell", "starbucks", "mcdonalds", "tacobell", "starbucks"]
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(alignment: .center) {
                Text("Favorite Brands")
                    .font(.system(size: 22, weight: .bold, design: .default))
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                Button("See all") {
                    self.seeAllBtnTapped()
                }
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(Color.black)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<10) { i in
                        VStack {
                            CellView()
                        }
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding([.top, .bottom], 20)
                    }
                }
            }
            .frame(height: 180)
        }
    }
    
    private func seeAllBtnTapped() {
        
    }
}

struct CellView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image("elon")
                .resizable()
                .scaledToFill()
                .frame(width: 100.0, height: 80.0)
                .clipShape(Circle())
                .padding([.leading, .top, .trailing], 20)
            Text("Elon Musk")
            HStack {
                ForEach(0..<4) { i in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                        .padding([.top, .bottom], 20)
                }
            }
        }
        .background(Color.white)
    }
}

struct FavoriteBrandView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteBrandView()
    }
}
