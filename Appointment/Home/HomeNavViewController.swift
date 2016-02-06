//
//  HomeNavViewController.swift
//  Appointment
//
//  Created by 张鹏 on 16/2/6.
//  Copyright © 2016年 SmallCobblerStudio. All rights reserved.
//

import UIKit

class HomeNavViewController: UINavigationController {
    
    var drawer:SCSDrawerViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeNavViewController: SCSDrawerControllerChild,SCSDrawerControllerPresenting {
    
    func drawerControllerDidOpen(drawerController: SCSDrawerViewController) {
        
        
    }
    func drawerControllerDidClose(drawerController: SCSDrawerViewController) {
        
        self.view.userInteractionEnabled = true
    }
    func drawerControllerWillOpen(drawerController: SCSDrawerViewController) {
        
        self.view.userInteractionEnabled = false
    }
    func drawerControllerWillClose(drawerController: SCSDrawerViewController) {
        
        
    }
}