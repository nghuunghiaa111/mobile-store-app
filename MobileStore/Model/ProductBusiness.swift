//
//  ProductBusiness.swift
//  MobileStore
//
//  Created by HuuNghia on 12/11/19.
//  Copyright © 2019 HuuNghia. All rights reserved.
//

import Foundation

public class ProductBussiness {
    
    private var lstProduct:[Product] = []
    private var lstCartProduct:[Product] = []
    
    public func fetchData() -> [Product] {
        if lstProduct.count == 0 {
            createData()
        }
        return lstProduct
    }
    
    public func createData() {
        let product1 = Product(productName: "iPhone 7 Plus 32GB", productPrice: "22.290.000", productImage: Images.iphone7plus, productDetail: "iPhone 7 Plus dường như là sản phẩm được Apple chăm chút để vượt xa iPhone 7, trở thành sản phẩm rất đáng để nâng cấp so với iPhone 6s Plus khi được nâng cấp thêm camera kép cùng chức năng chụp chân dung xoá phông cực hot. Không chỉ vậy, nâng cấp đáng giá khác như tốc độ xử lý nhanh hơn, chống nước, bụi, loa ngoài sống động... Tất cả đã tạo nên một sản phẩm hàng đầu tuyệt vời.", id: "DT1", count: 1)
        let product2 = Product(productName: "iPhone 7 32GB", productPrice: "18.790.000", productImage: Images.iphone7, productDetail: "iPhone 7 dường như đã gay sốt ngay từ khi ra mắt bởi những nâng cấp đáng giá về tốc độ xử lý, khả năng chụp ảnh, tính năng chống nước, bụi hiện đại... iPhone 7 đã trở thành ước mơ của rất nhiều người đam mê công nghệ, đặc biệt là với phiên bản dung lượng 32 GB có giá thành hợp lý hơn cả.", id: "DT2", count: 1)
        let product3 = Product(productName: "iPhone 6s 64GB", productPrice: "16.999.000", productImage: Images.iphone6s, productDetail: "iPhone 6S chính hãng ra mắt có thêm phiên bản màu vàng hồng, cảm ứng lực 3D Touch trên màn hình, nâng cấp mạnh mẽ về cấu hình và camera, đi kèm hệ điều hành iOS 9.", id: "DT3", count: 1)
        let product4 = Product(productName: "iPhone 6 64GB", productPrice: "18.499.000", productImage: Images.iphone6, productDetail: "iPhone 6 là một phiên bản iPhone màn hình lớn, nhưng nó không chỉ đơn thuần là lớn hơn về kích thước mà còn tốt hơn về mọi mặt. Thiết kế kim loại cao cấp bao phủ màn hình Retina HD tuyệt đẹp; mạnh mẽ hơn, nhưng lại tiết kiệm pin hơn; những sự phối hợp giữa phần cứng và phần mềm hoàn hảo, tạo ra một thế hệ mới nhất của iPhone và tốt hơn bất cứ sản phẩm nào trước đây.", id: "DT4", count: 1)
        let product5 = Product(productName: "Samsung Galaxy S7", productPrice: "14.990.000", productImage: Images.ssS7, productDetail: "Chính thức ra mắt tại sự kiện MWC 2016 tổ chức tại Barcelona (Tây Ban Nha), smartphone Samsung Galaxy S7 sở hữu nhiều sự thay đổi nổi bật ở cả thiết kế, cấu hình và những tính năng đi kèm. Chiếc điện thoại này hứa hẹn sẽ tạo nên sự bùng nổ trong phân khúc cao cấp và mang lại những thành công tiếp theo cho hãng điện thoại Hàn Quốc.", id: "DT5", count: 1)
        let product6 = Product(productName: "Samsung Galaxy Note 5", productPrice: "12.490.000", productImage: Images.ssNote5, productDetail: "Là bản nâng cấp hoàn hảo của Galaxy Note 4, Samsung Galaxy Note5 mang đến cho người dùng những trải nghiệm tuyệt vời nhất trên một chiếc điện thoại di động. Không chỉ dừng lại ở thiết kế sang trọng, màn hình 2K với dài màu rộng cùng độ tương phản cao, máy còn sở hữu cấu hình khủng với RAM 4GB và con chip lõi 8 Exynos 7420 đầy mạnh mẽ.", id: "DT6", count: 1)
        let product7 = Product(productName: "Samsung J7 Prime", productPrice: "6.290.000", productImage: Images.ssj7, productDetail: "Samsung Galaxy J7 Prime ra mắt với mục đích đánh mạnh vào phân khúc smartphone tầm trung hiện nay. Sở hữu màn hình lớn 5.5 inch Full HD, vi xử lý 8 nhân xung nhịp 1.6 GHz với 3 GB RAM chạy trên nền Android 6.0.1 cùng bộ đôi camera 13 MP/8 MP chất lượng, tất cả chỉ trong một mức giá dễ chịu của phân khúc.", id: "DT7", count: 1)
        let product8 = Product(productName: "Sony Xpera X", productPrice: "8.490.000", productImage: Images.sony, productDetail: "Camera trước của Sony Xperia cũng có độ phân giải cực kỳ ấn tượng 13MP, được tích hợp cảm biến xử lý tình huống ánh sáng yếu nổi tiếng của Sony. Camera này sẽ cho phép bạn chụp ảnh sắc nét vào mọi thời điểm và có được những bức hình selfie cực “chất” ngay cả trong điều kiện ánh sáng yếu.", id: "DT8", count: 1)
        let product9 = Product(productName: "Microsoft Lumia 950XL", productPrice: "6.990.000", productImage: Images.lumia, productDetail: "Lumia 950 XL là mẫu phablet “chiến lược” của Microsoft nhằm khẳng định lại vị thế của thương hiệu Lumia và chứng tỏ sức mạnh của hệ điều hành Windows 10 Mobile. Máy sở hữu một cấu hình rất mạnh với vi xử lý 8 nhân Qualcomm Snapdragon 810, RAM 3GB và camera chống rung quang học 20MP.", id: "DT9", count: 1)
        let product10 = Product(productName: "Asus Zenfone Go", productPrice: "2.990.000", productImage: Images.asus_zen_go, productDetail: "Asus Zenfone Go là mẫu smartphone giá rẻ được Asus giới thiệu lần đầu tiên tại thị trường Ấn Độ vào tháng 9/2015. Chiếc điện thoại này đánh dấu sự thay đổi quan trọng của công ty Đài Loan khi lần đầu tiên một mẫu Zenfone của họ được trang bị vi xử lý đến từ MediaTek.", id: "DT10", count: 1)
        lstProduct.append(product1)
        lstProduct.append(product2)
        lstProduct.append(product3)
        lstProduct.append(product4)
        lstProduct.append(product5)
        lstProduct.append(product6)
        lstProduct.append(product7)
        lstProduct.append(product8)
        lstProduct.append(product9)
        lstProduct.append(product10)
    }
    
    public func fetchDataCart() -> [Product] {
        return lstCartProduct
    }
    
    public func addProductCart(product: Product?) -> Bool {
        if product != nil && lstCartProduct.count != 0 {
            for i in 0...(lstCartProduct.count - 1) {
                if product?.id == lstCartProduct[i].id {
                    lstCartProduct[i].count = lstCartProduct[i].count + 1
                    break
                } else {
                    if i == lstCartProduct.count - 1 {
                        lstCartProduct.append(product!)
                    }
                    continue
                }
            }
            return true
        } else if product != nil && lstCartProduct.count == 0 {
            lstCartProduct.append(product!)
            return true
        }
        return false
    }
    
    public func totalPrice(number: Int, price: String) -> Int {
        let temp = Int(price.replacingOccurrences(of: ".", with: "")) ?? 0
        return temp * number
    }
    
    public func process() -> Int {
        var total = 0
        if lstCartProduct.count == 0 {
            return total
        } else {
            for i in 0...(lstCartProduct.count - 1) {
                total = total + totalPrice(number: lstCartProduct[i].count, price: lstCartProduct[i].productPrice)
            }
            return total
        }
    }
}
