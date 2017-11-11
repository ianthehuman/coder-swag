//
//  ProductVC.swift
//  coder-swag
//
//  Created by Ian Value on 11/10/17.
//  Copyright © 2017 intoTheElements. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
        
    }

    func intitProducts(category: Category) {
    products = DataService.instance.getProducts(forCategoryTitle:
        category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? productCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return productCell()
        
    }
}

