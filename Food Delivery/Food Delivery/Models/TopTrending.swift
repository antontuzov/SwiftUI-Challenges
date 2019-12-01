//
//  TopTrending.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 01/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI

struct TopTrending: Identifiable {
    var id: String = UUID().uuidString
    var image, title, minute, kcal: String
    
    static func getTopTrends() -> [TopTrending] {
        let topTrending1 = TopTrending(image: "res1", title: "Autumn Soup", minute: "13 min", kcal: "167 kcal")
        let topTrending2 = TopTrending(image: "res2", title: "Anjapar Restaurant", minute: "24 min", kcal: "127 kcal")
        let topTrending3 = TopTrending(image: "res3", title: "Palmtree Restaurant", minute: "18 min", kcal: "187 kcal")
        let topTrending4 = TopTrending(image: "res4", title: "Aasif Restaurant", minute: "1 hour", kcal: "117 kcal")
        let topTrending5 = TopTrending(image: "res5", title: "Brindhavan Restaurant", minute: "2 hour", kcal: "57 kcal")
        return [topTrending1, topTrending2, topTrending3, topTrending4, topTrending5]
    }
}
