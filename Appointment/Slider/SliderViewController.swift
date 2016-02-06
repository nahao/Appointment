//
//  SliderViewController.swift
//  Appointment
//
//  Created by 张鹏 on 16/2/6.
//  Copyright © 2016年 SmallCobblerStudio. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
    
    var drawer:SCSDrawerViewController?
    
    @IBOutlet weak var sliderTableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension SliderViewController {
    
    @IBAction func tapProfileBtn(sender: UIButton) {
        
        let profileNavVc = UIStoryboard(name: "Profile", bundle: nil).instantiateViewControllerWithIdentifier("BaseNavigationController") as! BaseNavigationController
        
        drawer?.replaceCenterViewControllerWithViewController(profileNavVc)
    }
    
}

extension SliderViewController: SCSDrawerControllerChild,SCSDrawerControllerPresenting {
    
    func drawerControllerWillOpen(drawerController:SCSDrawerViewController) {
        
    }
    
    func drawerControllerDidOpen(drawerController:SCSDrawerViewController) {
        
    }
    
    func drawerControllerWillClose(drawerController:SCSDrawerViewController) {
        
    }
    
    func drawerControllerDidClose(drawerController:SCSDrawerViewController) {
        
    }
}