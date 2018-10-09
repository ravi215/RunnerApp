 //
//  Category.swift
//  coder-swag
//
//  Created by Ravi Bhooshan on 08/10/18.
//  Copyright © 2018 Ravi Bhooshan. All rights reserved.
//

import Foundation
 struct Category{
   private(set) public var title: String
   private(set) public var imageName: String
    init(title: String, imageName: String){
     self.title = title
     self.imageName = imageName
    }
 }
