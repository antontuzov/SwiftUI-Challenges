//
//  FavoriteBrandView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 28/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct FavoriteBrandView: View {
    var favoriteBrands: [FavoriteBrand]
    
    var body: some View {
        VStack(spacing: 10) {
            HStack(alignment: .center) {
                Text("Favorite Brands")
                    .font(.system(size: 22, weight: .bold, design: .default))
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 15, trailing: 0))
                Spacer()
                Button("See all") {
                    self.seeAllBtnTapped()
                }
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(Color.black)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(favoriteBrands) { favoriteBrand in
                        VStack {
                            FavoriteBrandCellView(favoriteBrand: favoriteBrand)
                        }
                        .cornerRadius(10)
                        .padding([.top, .bottom], 20)
                    }
                }
                .shadow(color: .gray, radius: 3)
            }
            .frame(height: 180)
        }
    }
    
    private func seeAllBtnTapped() {
        
    }
}

struct FavoriteBrandCellView: View {
    var favoriteBrand: FavoriteBrand
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(favoriteBrand.avatar)
                .resizable()
                .scaledToFill()
                .frame(width: 100.0, height: 80.0)
                .clipShape(Circle())
                .padding([.leading, .top, .trailing], 20)
            Text(favoriteBrand.name)
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

//struct FavoriteBrandView_Previews: PreviewProvider {
//    static var previews: some View {
////        FavoriteBrandView()
//    }
//}
