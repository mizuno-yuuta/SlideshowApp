//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 水野優太 on 2020/01/12.
//  Copyright © 2020 yuuta.mizuno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var 次: UIButton!
    @IBOutlet weak var 戻る: UIButton!
    @IBOutlet weak var 再生: UIButton!
    var timer : Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage (named: "IMG_3250.jpeg")
        imageView.image = image
    }
    
    var displayImageNo = 0
    
   
    let imageNameArray = ["IMG_3250.jpeg", "IMG_3252.jpeg", "IMG_0206.jpeg"]

    
    func displayImage() {
        
        
        let name = imageNameArray[displayImageNo]
        
       
        let image = UIImage(named: name)
        
       
        imageView.image = image
    }
    
    @IBAction func nextButtonTap(_ sender: Any) {
         if displayImageNo < imageNameArray.count - 1 {
                  
                  displayImageNo += 1
                 
                  displayImage()
        } else {
                  displayImageNo = 0
                  displayImage()
              }
          }
          
    @IBAction func backButtonTop(_ sender: Any) {
        if  displayImageNo  >= 1 && displayImageNo  <= imageNameArray.count - 1  {
                           displayImageNo -= 1
            displayImage()
                     } else {
                              displayImageNo = imageNameArray.count - 1
                              displayImage()
        }}
    
    @IBAction func switchButtonTap(_ sender: Any) {
        
  
                if self.timer == nil {
                    
                    self.timer = Timer.scheduledTimer(timeInterval: 2.0,
                   target: self, selector:
                        #selector(updateTimer(_:)), userInfo: nil, repeats: true)
                   
                    次.isEnabled = false
                   戻る.isEnabled = false
                    
                    再生.setTitle("停止", for: .normal)
                 
                    self.view.backgroundColor = UIColor.lightGray
                    再生.titleLabel?.font =
                    UIFont.systemFont(ofSize: 25)
                    
                } else if self.timer != nil {
                    
                    self.timer.invalidate()
                    
                    self.timer = nil
                   
                    次.isEnabled = true
                    戻る.isEnabled = true
                    
                    再生.setTitle("再生", for: .normal)
                   
                    self.view.backgroundColor = UIColor.white
                    再生.titleLabel?.font =
                    UIFont.systemFont(ofSize: 20)
                }
            }

                
                @objc func updateTimer(_ timer: Timer) {
                    
                    if displayImageNo < imageNameArray.count - 1 {
                        
                        displayImageNo += 1
                        
                        displayImage()
                        print(displayImageNo)
                    } else {
                        displayImageNo = 0
                        displayImage()
                        print(displayImageNo) 
                    }
                }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

             let aViewController:AViewController = segue.destination as! AViewController
       aViewController.self.imagedate = imageView.image

         }

    @IBAction func 画面タップ(_ sender: Any) {
    }
    override func didReceiveMemoryWarning() {
             super.didReceiveMemoryWarning()
       }
    
    @IBAction func exit(_ sender: UIStoryboardSegue) {
    }
    

}
                 
    





