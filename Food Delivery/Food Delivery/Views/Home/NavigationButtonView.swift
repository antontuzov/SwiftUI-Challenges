//
//  NavigationButtonView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 28/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

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

struct NavigationButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButtonView()
    }
}
