//
//  AppDelegate.swift
//  Appointment
//
//  Created by 张鹏 on 16/1/23.
//  Copyright © 2016年 SmallCobblerStudio. All rights reserved.
//

import UIKit

let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var drawer:SCSDrawerViewController!


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        window?.rootViewController = launchVc()
        
        window?.makeKeyAndVisible()

        
        AVOSCloud.setApplicationId("gdlG0eRrP1arn7uqcpzg8daI-gzGzoHsz", clientKey: "YsXiXlNmIy9re1z2dYW2VG0S")
        AVAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        return true
    }
    
    private func launchVc() -> SCSDrawerViewController {
        
        let leftVc = UIStoryboard(name: "Slider", bundle: nil).instantiateViewControllerWithIdentifier("SliderViewController") as! SliderViewController
        let homeNavVc = UIStoryboard(name: "Home", bundle: nil).instantiateViewControllerWithIdentifier("BaseNavigationController") as! BaseNavigationController
        
        drawer = SCSDrawerViewController(leftViewController: leftVc, centerViewController: homeNavVc)
        
        return drawer
        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

