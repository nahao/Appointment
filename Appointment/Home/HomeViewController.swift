//
//  HomeViewController.swift
//  Appointment
//
//  Created by 张鹏 on 16/2/6.
//  Copyright © 2016年 SmallCobblerStudio. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }



}

extension HomeViewController {
    
    @IBAction func sliderControl(sender: UIBarButtonItem) {
        
        appDelegate.drawer.open()
    }
    
}


