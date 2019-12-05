//
//  Observables.swift
//  Restaurants
//
//  Created by Abservetech on 01/12/19.
//  Copyright © 2019 Abservetech. All rights reserved.
//

import Foundation
import Combine
import SwiftUI


class FoodDetailsObservable : ObservableObject{
    
    var didChange = PassthroughSubject<FoodDetailsObservable,Never>()
    
    @Published var FoodDetails = testFoodDetails{
        didSet{
            self.didChange.send(self)
        }
    }
}


class TabTag: ObservableObject {
    var didChange = PassthroughSubject<Void,Never>()
   
    @Published var selectedTag : Int = 0 {
        didSet {
            didChange.send()
        }
    }
}

class FoodListObservable : ObservableObject{
    
    var didChange = PassthroughSubject<FoodListObservable,Never>()
    
    @Published var foodDetail = testFoodDetails{
        didSet{
            self.didChange.send(self)
        }
    }
    
    @Published var selecedIndex = -1{
        didSet{
            self.didChange.send(self)
        }
    }
    
}
