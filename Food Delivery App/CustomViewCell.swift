//
//  CustomViewCell.swift
//  Food Delivery App
//
//  Created by Mudassar Sultan on 29/11/2022.
//

import UIKit

class CustomViewCell: UICollectionViewCell {

    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodDescription: UILabel!
    @IBOutlet weak var foodPrice: UILabel!
    @IBOutlet weak var bagButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardView.layer.cornerRadius = cardView.frame.size.height / 2
        bagButton.layer.cornerRadius = bagButton.frame.size.height / 2
    }
    

}
