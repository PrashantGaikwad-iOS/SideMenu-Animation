//
//  ViewController.swift
//  SideMenu Animation
//
//  Created by Prashant G on 11/8/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var showButton: UIButton!
    @IBOutlet var hideButton: UIButton!
    @IBOutlet var sideMenuView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideMenu()
    }

    func hideMenu() {
        UIView.animate(withDuration: 0.4, animations: {
               // self.view.alpha = 0
        })
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseOut, animations: {
            self.sideMenuView.transform = CGAffineTransform(translationX: -self.sideMenuView.frame.width-20, y: 0)
        })
        
    }
    
    func showMenu() {
        UIView.animate(withDuration: 0.4, animations: {
            //  self.view.alpha = 0
        })
        
        UIView.animate(withDuration: 0.4, delay: 0, options: .curveEaseOut, animations: {
            self.sideMenuView.transform = .identity
        })
    }

    @IBAction func showMenu(_ sender: Any) {
        
        showMenu()
        
    }
    
    @IBAction func hideMenu(_ sender: Any) {
        hideMenu()
    }
    
}

