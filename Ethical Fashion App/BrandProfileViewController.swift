//
//  BrandProfileViewController.swift
//  Ethical Fashion App
//
//  Created by Amelie Scheil on 7/30/20.
//  Copyright © 2020 Amelie Scheil. All rights reserved.
//

import UIKit

class BrandProfileViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var pages = [BrandProfileViewController]()
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let page1 = createAndAddProfileStep("bg.1", labelName: "SOKO Jewelry", iconImageName: "bg.1", text: "Hello!")
        let page2 = createAndAddProfileStep("bg.1", labelName: "SOKO Jewelry", iconImageName: "bg.1", text: "Hello!")
        pages = [page1, page2]
        
        let views: [String: UIView] = ["view": view, "page1": page1.view, "page2": page2.view]
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[page1(==view)]!", options: [], metrics: nil, views: views)
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|page1(==view)][page2(==view)]|", options: [.alignAllTop, .alignAllBottom], metrics: nil, views: views)
        NSLayoutConstraint.activate(verticalConstraints + horizontalConstraints)


        // Do any additional setup after loading the view.
    }
    
    private func createAndAddProfileStep(_ backgroundImageName: String, labelName: String, iconImageName: String, text: String) -> BrandProfileViewController {
        let profileStep = storyboard!.instantiateViewController(withIdentifier: "BrandProfileViewController") as!BrandProfileViewController
        profileStep.view.translatesAutoresizingMaskIntoConstraints = false
        profileStep.backgroundImage = UIImage(named: backgroundImageName)
        profileStep.label = UILabel(named: labelName)
        profileStep.iconImage = UIImage(named: iconImageName)
        profileStep.text = text
        
        scrollView.addSubview(profileStep.view)
        
        return profileStep
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
