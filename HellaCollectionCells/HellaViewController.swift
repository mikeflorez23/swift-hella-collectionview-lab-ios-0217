//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let array = Array(0...100)
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = color(for: indexPath)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? HellaDetailViewController,
            let indexPath = collectionView.indexPathsForSelectedItems?.first {
            dest.indexNum = String(array[indexPath.item])
            dest.view.backgroundColor = color(for: indexPath)
        }
    }
    
    func color(for indexPath: IndexPath) -> UIColor {
        switch indexPath.item {
        case 0,1,2,3,5,8,13,21,34,55,89:
            return UIColor.purple
        default:
            return UIColor.yellow
        }
        
    }
    
}

