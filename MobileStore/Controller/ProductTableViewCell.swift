//
//  ProductTableViewCell.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import UIKit

protocol ProductCellDelegate {
    func didTapAddButton(product: Product)
}

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupView()
    }
    
    var productOJ: Product!
    var delegate: ProductCellDelegate?
    
    func setProduct(product: Product) {
        productOJ = product
        productImageView.image = product.productImage
        productNameLabel.text = product.productName
        productPriceLabel.text = product.productPrice
    }
    
    func setupView() {
        //productNameLabel
        productNameLabel.textColor = .black
        productNameLabel.font = productNameLabel.font.bold
        //productPriceLabel
        productPriceLabel.textColor = .red
        productPriceLabel.font = productPriceLabel.font.italic
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        delegate?.didTapAddButton(product: productOJ)
    }
}

