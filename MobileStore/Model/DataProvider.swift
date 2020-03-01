//
//  DataProvider.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import Foundation
import UIKit

public class DataProvider {
    public static func thongBao(parent: UIViewController, noiDung: String) {
        //tao ra hop thoai thong bao
        let alert = UIAlertController(title: "Thong bao", message: noiDung, preferredStyle: .alert)
        let acDongY = UIAlertAction(title: "OK", style: .default, handler: nil)
        //Them nut vao thong bao
        alert.addAction(acDongY)
        //Hien thi thong bao
        parent.present(alert, animated: true, completion: nil)
    }
    
    private static var _productBus:ProductBussiness = ProductBussiness()
    public static var productBus:ProductBussiness {
        get {
            return _productBus
        }
    }
    
    public static func formatPrice(price: Int) -> String {
        let formater = NumberFormatter()
        formater.groupingSeparator = "."
        formater.numberStyle = .decimal
        return String(formater.string(from: NSNumber(value: price)) ?? "0")
    }
}

struct Images {
    static let asus_zen_go = UIImage(named: "asus_zen_go")!
    static let iphone6 = UIImage(named: "iphone_6")!
    static let iphone6s = UIImage(named: "iphone_6s")!
    static let iphone7 = UIImage(named: "iphone7_gold")!
    static let iphone7plus = UIImage(named: "iphone_7_plus")!
    static let lumia = UIImage(named: "lumia_950xl")!
    static let ssj7 = UIImage(named: "sam_sung_j7")!
    static let ssNote5 = UIImage(named: "sam_sung_note5")!
    static let ssS7 = UIImage(named: "sam_sung_s7")!
    static let sony = UIImage(named: "sony_xperia")!
}

