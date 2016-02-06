//
//  SliderTableViewController.swift
//  Appointment
//
//  Created by 张鹏 on 16/2/6.
//  Copyright © 2016年 SmallCobblerStudio. All rights reserved.
//

import UIKit

class SliderTableViewController: UITableViewController {
    
    private var previousRow:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}

extension SliderTableViewController {
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch indexPath.row {
        case 0 :
            let homeNavVc = UIStoryboard(name: "Home", bundle: nil).instantiateViewControllerWithIdentifier("BaseNavigationController") as! BaseNavigationController
            appDelegate.drawer.replaceCenterViewControllerWithViewController(homeNavVc)
            break
        case 1 :
            break
        case 2 :
            break
        case 3 :
            break
        default :break
        }
        previousRow = indexPath.row
    }
}
