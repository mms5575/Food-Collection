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
        
        
        let blur = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blur)
        blurView.frame = self.bounds
        blurView.layer.masksToBounds = true
        blurView.layer.cornerRadius = 20
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        cardView.insertSubview(blurView, at: 0)
        
    }
    
    

}
