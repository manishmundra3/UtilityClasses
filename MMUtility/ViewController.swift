//
//  ViewController.swift
//  MMUtility
//
//  Created by manish on 11/04/17.
//  Copyright © 2017 manish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        print(dtFormatter_dd_MM_yyyy.string(from: Date()))
            
        
        MMSharedUtllity().checkForInternetConnection()
        print(Errors.Bad_Request)
        
        // Get screen size
        print(MMSharedUtllity.ScreenSize.SCREEN_HEIGHT)
        print(MMSharedUtllity.ScreenSize.SCREEN_WIDTH)
        print(MMSharedUtllity.ScreenSize.SCREEN_MAX_LENGTH)
        print(MMSharedUtllity.ScreenSize.SCREEN_HEIGHT)
        
        // Get interface
        print(MMSharedUtllity.DeviceType.IS_IPAD)
        print(MMSharedUtllity.DeviceType.IS_IPHONE_4_OR_LESS)
        print(MMSharedUtllity.DeviceType.IS_IPHONE_5)
        print(MMSharedUtllity.DeviceType.IS_IPHONE_6)
        print(MMSharedUtllity.DeviceType.IS_IPHONE_6P)
        
        // Shared instance
        print(MMSharedUtllity.MMSharedInstance())
      
        // User Default var in MMSharedUtility
        UserDefault.setValue("manish", forKey: "name")
        UserDefault.synchronize()
        
        print(UserDefault.value(forKey: "name") as? String)
        
        // Color
         _ = MMColorUtility().colorFromHexa(hex: "#111111")
         _ = MMColorUtility().colorFromRGB(rValue: 22, gValue: 22, bValue: 22)
        
        // String Validation
        
        let isValid = MMStringValidationUtility().isValidEmail(text: "@manish.co.in")
        print(isValid)
        
         let isBalnk = MMStringValidationUtility().isStringBlank(text:"")
        print(isBalnk)
        
        print(MMStringValidationUtility().count(text: "manish"))
        
        print(MMStringValidationUtility().maxLength(text: "mundra", length: 2))
   
        print(MMStringValidationUtility().minLength(text: "manish", length: 2))
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

