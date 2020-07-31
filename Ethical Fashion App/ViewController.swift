//
//  ViewController.swift
//  Ethical Fashion App
//
//  Created by Amelie Scheil on 7/28/20.
//  Copyright © 2020 Amelie Scheil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "item"
        self.tabBarItem.image = UIImage(named: "item")
        self.tabBarItem.selectedImage = UIImage(named: "item_selected")
    }
    
//    @IBAction func externalurl1(_ sender: UIButton) {
//        UIApplication.shared.open(URL(string:"https://nosidebar.com/ethical-fashion/")! as URL, options: [:], completionHandler: nil)
//    }
    
    @IBOutlet weak var articleScroll: UIScrollView!

}

