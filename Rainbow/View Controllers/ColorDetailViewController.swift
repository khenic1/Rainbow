//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Kelley Henican on 1/21/20.
//  Copyright © 2020 Kelley Henican. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    // Dependent upon the table view controller's selected color
    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
      
    }
    
    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }
   

}
