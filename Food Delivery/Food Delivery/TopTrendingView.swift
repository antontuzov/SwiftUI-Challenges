//
//  TopTrendingView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 29/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct TopTrendingView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack(alignment: .center) {
                Text("Top Trending")
                    .font(.system(size: 21, weight: .bold, design: .default))
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                Spacer()
                Button("See all") {
                    self.seeAllBtnTapped()
                }
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(Color.gray)
            }
            TopTrendingCellView()
        }
    }
    
    private func seeAllBtnTapped() {
        
    }
}

struct TopTrendingCellView: View {
    var body: some View {
        List {
            ForEach(0..<5) { i in
                HStack(spacing: 10) {
                    Image("elon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50.0, height: 50.0)
                        .cornerRadius(8)
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Big Tiger Restaurant")
                            .font(.system(size: 17, weight: .heavy, design: .default))
                        Text("Descriptioon")
                            .font(.system(size: 15, weight: .light, design: .default))
                    }
                }
            }
        }.frame(height: 250)
    }
}

struct TopTrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TopTrendingView()
    }
}
