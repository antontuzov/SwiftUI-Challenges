//
//  TagModifier.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 01/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct TagModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding([.top, .bottom], 2)
            .padding([.leading, .trailing], 15)
            .background(Color.labelBackground)
            .font(.system(size: 12, weight: .light, design: .default))
            
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.labelBackground, lineWidth: 2))
    }
}
