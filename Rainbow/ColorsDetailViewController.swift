//
//  ColorsDetailViewController.swift
//  Rainbow
//
//  Created by Aaron Cleveland on 12/9/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    
    var cellColor: MyColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    // give the views in this view controller information they need
    func updateViews() {
        if let unwrappedColor = cellColor {
            title = unwrappedColor.name
            view.backgroundColor = unwrappedColor.color
        }
    }
}
