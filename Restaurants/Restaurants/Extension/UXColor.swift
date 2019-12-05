//
//  UXColor.swift
//  Restaurants
//
//  Created by Abservetech on 04/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//
import Foundation
import SwiftUI

extension Color{
    static var lightGray = Color(color(hex: "#999999"))
    static var appColor = UIColor.yellow

}

func color(hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
    
    
    
}
