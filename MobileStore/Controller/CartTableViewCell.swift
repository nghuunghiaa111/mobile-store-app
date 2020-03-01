//
//  CartTableViewCell.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productVolumeLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
