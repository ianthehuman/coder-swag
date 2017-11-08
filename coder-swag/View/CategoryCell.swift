//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Ian Value on 11/3/17.
//  Copyright © 2017 intoTheElements. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    
    }

  
    }


