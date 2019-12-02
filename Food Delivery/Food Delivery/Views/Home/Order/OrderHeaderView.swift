//
//  OrderHeaderView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 02/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct OrderHeaderView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 100) {
            HStack {
                Button(action: {
                    print("Back button tapped")
                }) {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color.black)
                        .font(.title)
                        .padding(5)
                }.background(Color(red: 242, green: 242, blue: 247, opacity: 1.0))
                Spacer()
                Button(action: {
                    print("Edit button tapped")
                }) {
                    Image(systemName: "pencil")
                        .foregroundColor(Color.black)
                        .font(.title)
                        .padding(5)
                }.background(Color(red: 242, green: 242, blue: 247, opacity: 1.0))
            }.padding([.leading, .trailing], 30)
            Text("$42.00")
                .font(.system(size: 45, weight: .heavy, design: .default))
            Spacer()
        }
    }
}

struct OrderHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderHeaderView()
    }
}
