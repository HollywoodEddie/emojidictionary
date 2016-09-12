//
//  DefineViewController.swift
//  Emoji Dictionary
//
//  Created by MAC on 9/12/16.
//  Copyright © 2016 MAC. All rights reserved.
//

import UIKit

class DefineViewController: UIViewController {
    
    @IBOutlet weak var defineLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!

    var emoji = "NO Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        if emoji == "👁" {
        defineLabel.text = "The eye"
        }        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
