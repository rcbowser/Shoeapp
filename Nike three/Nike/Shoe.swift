//
//  Shoe.swift
//  Nike
//
//  Created by Ronald Bowser on 7/9/19.
//  Copyright © 2019 Ronald Bowser. All rights reserved.
//
import Foundation
import SwiftUI
import Combine

struct Shoe: Hashable, Codable, Identifiable {
    
    var id: Int
    var product: String
    var imageName: String
    var catagory: Catagory
    var description: String
    var price: Double
    
    enum Catagory: String, Hashable, Codable, CaseIterable {
        case mens = "Men's Shoes"
        case womens = "Women's Shoes"
        case kids = "Kid's Shoes"
    }
    
    
    
}

extension Shoe {
    static func all() -> [Shoe] {
        return shoeData
    }
}


