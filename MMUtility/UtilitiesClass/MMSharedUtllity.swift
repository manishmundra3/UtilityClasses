//
//  MMSharedUtllity.swift
//  SwiftWithSizeClasses
//
//  Created by manish on 24/11/15.
//  Copyright © 2015 manish. All rights reserved.
//

import UIKit

let UserDefault  = UserDefaults.standard
class MMSharedUtllity: NSObject {

    
    // ********************************************
    // ********************************************
    
    // Enum for UIUserInterfaceIdiom
    // MARK: Get Device Type and Screen Size
    enum UIUserInterfaceIdiom : Int
    {
        case Unspecified
        case Phone
        case Pad
    }
    
    struct ScreenSize
    {
        static let SCREEN_WIDTH                = UIScreen.main.bounds.size.width
        static let SCREEN_HEIGHT               = UIScreen.main.bounds.size.height
        static let SCREEN_MAX_LENGTH       = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH        = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
    struct DeviceType
    {
        static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
        static let IS_IPHONE_5                  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
        static let IS_IPHONE_6                  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
        static let IS_IPHONE_6P                 = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
        static let IS_IPAD                         =  UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
    }

    
    // ********************************************
    // ********************************************

    
    // MARK: Shared Utility
    class MMSharedInstance {
        class var sharedInstance: MMSharedInstance {
            struct Static {
                static let instance: MMSharedInstance = MMSharedInstance()
            }
            return Static.instance
        }
    }
    

//    // MARK: Check Internet Connection
    
     /// Check internet connection
     func checkForInternetConnection() {
        
        let reachability = Reachability()!
        
        reachability.whenReachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                if reachability.isReachableViaWiFi {
                    print("Reachable via WiFi")
                } else {
                    print("Reachable via Cellular")
                }
            }
        }
        reachability.whenUnreachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                print("Not reachable")
            }
        }
    
        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    
    }
    
}
