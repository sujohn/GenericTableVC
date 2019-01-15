//
//  AppDelegate.swift
//  GenericTableVC
//
//  Created by Md. Shaiful Islam on 12/7/18.
//  Copyright © 2018 Md. Shaiful Islam Sujohn. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let gen1 = GenericTableModel(items: Trade.trades, cellHeight: 44.0, xib: true)
        gen1.numberOfSections = 1
        let gen2 = GenericTableModel(items: Trade.trades, cellHeight: 44.0, xib: false)
        gen2.numberOfSections = 1
        
        let gtvc = GenericTableVC(genericModel: gen1, configure: { (cell: TestTableCell, model) in
            
            cell.textField.text = model.currency
            
        }) { (trade) in
            print(trade.buyOrSell)
        }
        gtvc.title = "Title1"
        
        let gtvc2 = GenericTableVC(genericModel: gen2, configure: { (cell: UITableViewCell, model) in
            
            cell.textLabel!.text = model.message
            
        }) { (trade) in
            print(trade.buyOrSell)
        }
        gtvc2.title = "Title2"
        
        let tabVC = UITabBarController(nibName: nil, bundle: nil)
        tabVC.setViewControllers([
            UINavigationController(rootViewController: gtvc),
            UINavigationController(rootViewController: gtvc2)
            ], animated: false)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabVC
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

