//
//  AViewController.swift
//  SlideshowApp
//
//  Created by 水野優太 on 2020/01/13.
//  Copyright © 2020 yuuta.mizuno. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!

    @IBAction func 戻るボタン(_ sender: UIButton) {
    }
    var imagedate : UIImage!
   
     override func viewDidLoad() {
         super.viewDidLoad()

        image.image = self.imagedate
}
}

     

