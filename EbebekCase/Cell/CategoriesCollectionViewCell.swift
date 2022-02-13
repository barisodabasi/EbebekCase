//
//  CategoriesCollectionViewCell.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 11.02.2022.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoriesView: UIView!
    @IBOutlet weak var categoriesOvalImage: UIImageView!
    @IBOutlet weak var categoriesNameLabel: UILabel!
    
    static let identifier = "CategoriesCollectionViewCell"
    
    var post: CategoriesModel! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI(){
        DispatchQueue.main.async { [self] in
            categoriesNameLabel.text = post.name
            if post.isOvalImage == true {
                categoriesOvalImage.image = post.image
            } else {
                categoriesOvalImage.isHidden = true
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
