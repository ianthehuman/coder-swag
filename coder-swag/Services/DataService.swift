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
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
     
    ]
    
    private let hats = [
    Product(title: "black beanie", price: "$18", imageName: "hat01.png"),
    Product(title: "black hat", price: "$22", imageName: "hat02.png"),
    Product(title: "white hat", price: "$22", imageName: "hat03.png"),
    Product(title: "snapback hat", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
    Product(title: "grey hoodie", price: "$18", imageName: "hoodie01.png"),
    Product(title: "red hoodie", price: "$32", imageName: "hoodie02.png"),
    Product(title: "grey hoodie", price: "$32", imageName: "hoodie03.png"),
    Product(title: "black hoodie", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
    Product(title: "black shirt", price: "$18", imageName: "shirt01.png"),
    Product(title: "light grey shirt", price: "$19", imageName: "shirt02.png"),
    Product(title: "red shirt", price: "$18", imageName: "shirt03.png"),
    Product(title: "grey shirt", price: "$18", imageName: "shirt04.png"),
    Product(title: "kickflip black shirt", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITALGOODS":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }

    
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
