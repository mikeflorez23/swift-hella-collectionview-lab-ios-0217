//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Michael on 2/16/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    
    @IBOutlet weak var indexNumberLabel: UILabel!
    
    var indexNum: String = "" 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indexNumberLabel.text = indexNum
    }
    
}
