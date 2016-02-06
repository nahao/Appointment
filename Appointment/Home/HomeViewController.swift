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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

extension HomeViewController {
    
    @IBAction func sliderControl(sender: UIBarButtonItem) {
        
        appDelegate.mainVc.open()
    }
    
}


