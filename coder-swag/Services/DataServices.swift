//
//  DataServices.swift
//  coder-swag
//
//  Created by Ravi Bhooshan on 09/10/18.
//  Copyright © 2018 Ravi Bhooshan. All rights reserved.
//

import Foundation
class DataServices{
    static let instance = DataServices()
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    private let hats = [
    Product(imageName: "hat01.png", title: "hatsOff", price: "$412"),
    Product(imageName: "hat02.png", title: "hatsUp", price: "$125"),
    Product(imageName: "hat03.png", title: "hatsFuck", price: "$152"),
    Product(imageName: "hat04.png", title: "hats", price: "$126")
    ]
    private let hoodies = [
    Product(imageName: "hoodie01.png", title: "myhoodie Red", price: "$25"),
    Product(imageName: "hoodie02.png", title: "myhoodie Black", price: "$35"),
    Product(imageName: "hoodie03.png", title: "myhoodie Blue", price: "$45"),
    Product(imageName: "hoodie04.png", title: "myhoodie White", price: "$15")
    ]
    private let shirts = [
    Product(imageName: "shirt01.png", title: "Alen Solly", price: "$63"),
    Product(imageName: "shirt02.png", title: "Oxemberg", price: "$45"),
    Product(imageName: "shirt03.png", title: "Peter England", price: "$223"),
    Product(imageName: "shirt04.png", title: "Jhon Player", price: "$125"),
    ]
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category]{
        return categories
        
    }
    func getProducts(forCategoryTitle title: String) ->[Product]{
        switch title {
        case "SHIRTS":
        return getShirts()
           
            case "HOODIES":
            return getHoodies()
            
                case "HATS":
                return getHats()
            
                    case "DIGITAL":
                    return getDigital()
                    
        default:
            return getShirts()
        }
    }
    
    
    
    func getHats() -> [Product]{
        return hats
    }
    func getShirts() -> [Product]{
        return shirts
    }
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getDigital() -> [Product]{
        return digitalGoods
    }
 }


