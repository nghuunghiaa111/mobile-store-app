//
//  Product.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import Foundation
import UIKit

public class Product {
    var productName = ""
    var productPrice = ""
    var productImage = UIImage()
    var productDetail = ""
    var id = ""
    var count = 1
    
    init(productName: String, productPrice: String, productImage: UIImage, productDetail: String, id: String, count: Int) {
        self.productName = productName
        self.productPrice = productPrice
        self.productImage = productImage
        self.productDetail = productDetail
        self.id = id
        self.count = count
    }
}  
