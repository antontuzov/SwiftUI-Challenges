//
//  WelcomeView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 28/11/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

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
                Spacer()
                NavigationButtonView()
            }
            .padding(EdgeInsets(top: 30, leading: 20, bottom: 0, trailing: 20))
            Image("elon")
                .resizable()
                .scaledToFill()
                .frame(width: 45.0, height: 45.0)
                .clipShape(Circle())
                .shadow(radius: 2)
                .padding(.leading, 20)
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
