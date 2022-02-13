//
//  BannersCollectionViewCell.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 12.02.2022.
//

import UIKit
import Kingfisher

class BannersCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var bannersImageView: UIImageView!
    @IBOutlet weak var bannersNameLabel: UILabel!
    @IBOutlet weak var bannersBackgroundView: UIView!
    
    
    
    static let identifier = "BannersCollectionViewCell"
    
    var post: HomePageComponent! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI(){
        DispatchQueue.main.async { [self] in
            bannersNameLabel.text = post.homepageTab1BannerCarouselComponent.title
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bannersImageView.layer.cornerRadius = 15
        bannersImageView.layer.maskedCorners =  [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        bannersImageView.layer.masksToBounds = true

        bannersNameLabel.layer.cornerRadius = 15
        bannersNameLabel.layer.maskedCorners =  [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        bannersNameLabel.layer.masksToBounds = true
    }
}
