//
//  ViewController.swift
//  Food Delivery App
//
//  Created by Mudassar Sultan on 29/11/2022.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var foodCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodCollection.register(UINib(nibName: "CustomViewCell", bundle: nil), forCellWithReuseIdentifier: "foodCard")
    }
    
//MARK: - UICollectionView DataSource Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCard", for: indexPath) as! CustomViewCell
        cell.foodImage.image = UIImage(named: "burger1")
        cell.foodLabel.text = "Ham Burger"
        cell.foodDescription.text = "Cheese, Grill Piece"
        cell.foodPrice.text = "$21"
        
        return cell
    }
    
    //MARK: - UICollectionView Delegate Methods
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        _ = collectionView.cellForItem(at: indexPath) as? CustomViewCell
    }
    
}

