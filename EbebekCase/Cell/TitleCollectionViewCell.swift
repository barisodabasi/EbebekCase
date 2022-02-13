//
//  TitleCollectionViewCell.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 11.02.2022.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleBackgroundView: UIView!
    @IBOutlet weak var titleNameLabel: UILabel!
    
    static let identifier = "TitleCollectionViewCell"
    
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
