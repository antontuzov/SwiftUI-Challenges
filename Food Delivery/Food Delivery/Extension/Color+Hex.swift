//
//  Color+Hex.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 01/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

extension Color {
    static let buttonColor = Color(hex: "7263F9")
    static let labelBackground = Color(red: 0.923, green: 0.911, blue: 0.91)
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff

        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)
    }
}
