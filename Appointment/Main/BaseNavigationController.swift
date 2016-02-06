//
//  BaseNavigationController.swift
//  Appointment
//
//  Created by 张鹏 on 16/2/6.
//  Copyright © 2016年 SmallCobblerStudio. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    
    var drawer:SCSDrawerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 设置导航栏的背景
        self.navigationBar.setBackgroundImage(UIImage(named: "bar_top"), forBarMetrics: UIBarMetrics.Default)
        self.navigationBar.tintColor = UIColor.whiteColor()
        
        //设置标题颜色
        let navigationTitleAttribute : NSDictionary = NSDictionary(object: UIColor.whiteColor(),forKey: NSForegroundColorAttributeName)
        navigationBar.titleTextAttributes = navigationTitleAttribute as? [String : AnyObject]
        
        let item = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        self.navigationItem.backBarButtonItem = item

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

extension BaseNavigationController: SCSDrawerControllerChild,SCSDrawerControllerPresenting {
    
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