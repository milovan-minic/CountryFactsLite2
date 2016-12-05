//
//  AppDelegate.swift
//  CountryFactsLite2
//
//  Created by iosakademija on 12/5/16.
//  Copyright © 2016 iOS akademija. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let storyboard = UIStoryboard(name: "LandingPage", bundle: nil)
        
        guard let nc = storyboard.instantiateInitialViewController() as? UINavigationController else {
            fatalError("Faile to create instance of \(storyboard)")
        }
        
        self.window?.rootViewController = nc
        
        return true
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

