//
//  CartViewController.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var cartProductTable: UITableView!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    var lstCart:[Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Product Cart"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .done, target: self, action: #selector(backButtonTapped))
        
        setupTableView()
    }
    
    @objc func backButtonTapped() {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    func setupTableView() {
        cartProductTable.register(UINib(nibName: "CartTableViewCell", bundle: nil), forCellReuseIdentifier: "cartCell")
        cartProductTable.rowHeight = 60
        
        lstCart = DataProvider.productBus.fetchDataCart()
        
        self.cartProductTable.dataSource = self
        self.cartProductTable.delegate = self
        
        process()
    }
    
    func process() {
        totalPriceLabel.text = DataProvider.formatPrice(price: DataProvider.productBus.process())
    }
    
    //tableView protocol
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstCart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartProductTable.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        cell.productNameLabel.text = lstCart[indexPath.row].productName
        cell.productVolumeLabel.text = String(lstCart[indexPath.row].count)
        cell.productPriceLabel.text = lstCart[indexPath.row].productPrice
        return cell
    }
    
}
