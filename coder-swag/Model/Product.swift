//
//  Product.swift
//  coder-swag
//
//  Created by Ravi Bhooshan on 09/10/18.
//  Copyright © 2018 Ravi Bhooshan. All rights reserved.
//

import Foundation
struct Product {
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var price: String
    init(imageName: String, title: String , price: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}
