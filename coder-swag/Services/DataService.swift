//
//  DataService.swift
//  coder-swag
//
//  Created by Ian Value on 11/3/17.
//  Copyright © 2017 intoTheElements. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
    
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "Hoodies", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
     
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
