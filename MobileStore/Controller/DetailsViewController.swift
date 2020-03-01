//
//  DetailsViewController.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productDetailTextView: UITextView!
    
    var product = Product(productName: "", productPrice: "", productImage: Images.asus_zen_go, productDetail: "", id: "", count: 1)

    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "add"), style: .done, target: self, action: #selector(addButtonTapped))
        
        setupView()
    }
    
    func setupView() {
        productImageView.image = product.productImage
        productNameLabel.text = product.productName
        productPriceLabel.text = product.productPrice
        productDetailTextView.text = product.productDetail
    }
    
    @objc func addButtonTapped() {
        let kq = DataProvider.productBus.addProductCart(product: self.product)
        if kq {
            let alert = UIAlertController(title: "Thông báo", message: "Bạn vừa thêm sản phẩm vào giỏ hàng", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(alerAction)
            present(alert, animated: true)
        }
    }
}
