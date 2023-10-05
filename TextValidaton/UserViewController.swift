//
//  UserViewController.swift
//  TextValidaton
//
//  Created by shark boy on 10/3/23.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var picAlignConstraint: NSLayoutConstraint!
    @IBOutlet weak var profileSegmentControl: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func profileSwitch(_ sender: UISegmentedControl) {
        var t = CGAffineTransform.identity
        switch profileSegmentControl.selectedSegmentIndex {
            case 0:
            profileImageView.transform = CGAffineTransform.identity
            case 1:
            t = t.translatedBy(x: -140, y: -40)
//            profileImageView.transform = t
            t = t.scaledBy(x: 0.5, y: 0.5)
            profileImageView.transform = t
        default:
            profileImageView.transform = CGAffineTransform.identity
            

            }
        
        
    }
    
}
