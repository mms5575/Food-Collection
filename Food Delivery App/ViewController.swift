//
//  ViewController.swift
//  Food Delivery App
//
//  Created by Mudassar Sultan on 29/11/2022.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate,UICollectionViewDelegateFlowLayout{
    @IBOutlet weak var foodCollection: UICollectionView!
    @IBOutlet var background: UIView!
    
    var headerItem: [String] = ["Burger" , "Pizza" , "Sandwich"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradirnt(background: background)
        foodCollection.register(UINib(nibName: "CustomViewCell", bundle: nil), forCellWithReuseIdentifier: "foodCard")
        foodCollection.backgroundColor = UIColor.clear
        foodCollection.backgroundView = UIView(frame: CGRect.zero)
    }
    
//MARK: - UICollectionView DataSource Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCard", for: indexPath) as! CustomViewCell
        cell.backgroundColor = .clear
        cell.foodImage.image = UIImage(named: "burger1")
        cell.foodLabel.text = "Ham Burger"
        cell.foodDescription.text = "Cheese, Grill Piece"
        cell.foodPrice.text = "$21"
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 230)
    }
    //MARK: - UICollectionView Delegate Methods
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        _ = collectionView.cellForItem(at: indexPath) as? CustomViewCell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
    }
    func addGradirnt(background: UIView){
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
        background.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    
    //MARK: Header methods
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "myHeader", for: indexPath) as! HeaderCollectionView
        headerView.headerLabel.text = headerItem[indexPath.row]
        return headerView
    }


}

