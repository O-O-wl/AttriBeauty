//
//  ViewController.swift
//  AttriBeauty
//
//  Created by O-O-wl on 12/08/2019.
//  Copyright (c) 2019 O-O-wl. All rights reserved.
//

import UIKit
import AttriBeauty

class ViewController: UIViewController {
    
    @IBOutlet var demoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoLabel.attributedText = demoLabel.text?.beautfiy()
            .attriBeauty
            .fgColor(.blue)
            .bgColor(.purple).regex("y")
            .fgColor(.red).range(NSRange(0...4))
            .font(.boldSystemFont(ofSize: 30))
            .align(.center)
            .apply()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

