//
//  ProductViewController.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ProductCellDelegate {
    
    @IBOutlet weak var productTableView: UITableView!
    
    var lstProduct:[Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Top products"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "cart_put"), style: .done, target: self, action: #selector(cartButtonTapped))
       
        setupTableView()
        
    }
    
    @objc func cartButtonTapped() {
        let cartVC = UINavigationController(rootViewController: CartViewController())
        cartVC.modalPresentationStyle = .fullScreen
        present(cartVC, animated: true)
    }
    
    func setupTableView() {
        productTableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "productCell")
        productTableView.rowHeight = 120
        
        lstProduct = DataProvider.productBus.fetchData()
        
        self.productTableView.dataSource = self
        self.productTableView.delegate = self
    }

    //tableView protocol
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productTableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductTableViewCell
        let product = lstProduct[indexPath.row]
        cell.setProduct(product: product)
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailsViewController()
        let productOJ = lstProduct[indexPath.row]
        detailVC.product = productOJ
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func didTapAddButton(product: Product) {
        let kq = DataProvider.productBus.addProductCart(product: product)
        if kq {
            let alert = UIAlertController(title: "Thông báo", message: "Bạn vừa thêm sản phẩm vào giỏ hàng", preferredStyle: .alert)
            let alerAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(alerAction)
            present(alert, animated: true)
        }
    }
}
