//
//  BarButtonModifier.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 03/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct BarButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.black)
            .font(.title)
            .frame(width: 25, height: 20, alignment: .center)
            .padding(10)
    }
}

