//
//  FoodViewController.swift
//  Food Delivery App
//
//  Created by Mudassar Sultan on 24/12/2022.
//

import UIKit

class FoodViewController: UIViewController {

    @IBOutlet var gradientBackground: UIView!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var addSubView: UIView!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var subBtn: UIButton!
    
    @IBOutlet weak var addtoCart: UIButton!
    var quantity: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradient(background: gradientBackground)
        addCornerRadius(view: gradientBackground)
        addCornerRadius(view: addSubView)
        addCornerRadius(view: addBtn)
        addCornerRadius(view: subBtn)
        addCornerRadius(view: addtoCart)
        
        quantityLabel.text = String(quantity)
        
    }
    @IBAction func backHome(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    @IBAction func addButton(_ sender: UIButton) {
        quantity += 1
        quantityLabel.text = String(quantity)
        
    }
    
    
    @IBAction func subButton(_ sender: UIButton) {
        if quantity != 0{
            quantity -= 1
        }
        quantityLabel.text = String(quantity)
    }
    
    
    
    @IBAction func fvrtBtn(_ sender: UIButton) {
        if sender.currentImage == UIImage(systemName: "heart"){
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
//            sender.setImage(UIImage(named: "heartFill"), for: .normal)
        }else{
            sender.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }
    
    
    func addGradient(background: UIView){
        // Create a gradient layer.
        let gradientLayer = CAGradientLayer()
        // Set the size of the layer to be equal to size of the display.
        gradientLayer.frame = view.bounds
        // Set an array of Core Graphics colors (.cgColor) to create the gradient.
        // This example uses a Color Literal and a UIColor from RGB values.
        gradientLayer.colors = [#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1).cgColor, UIColor(red: 252/255, green: 238/255, blue: 33/255, alpha: 1).cgColor]
        // Rasterize this static layer to improve app performance.
        gradientLayer.shouldRasterize = true
        // Apply the gradient to the backgroundGradientView.
        background.layer.addSublayer(gradientLayer)
    }

    func addCornerRadius(view: UIView){
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
    }
}
