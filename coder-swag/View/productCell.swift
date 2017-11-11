//
//  productCellCollectionViewCell.swift
//  coder-swag
//
//  Created by Ian Value on 11/9/17.
//  Copyright © 2017 intoTheElements. All rights reserved.
//

import UIKit

class productCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
