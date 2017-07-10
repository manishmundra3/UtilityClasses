//
//  MMColorUtility.swift
//  MMUtility
//
//  Created by manish on 11/04/17.
//  Copyright © 2017 manish. All rights reserved.
//

import UIKit

class MMColorUtility: NSObject {

    
    // MARK: Color from RGB  to UIColor
    
    /// Get color using RGB
    ///
    /// - Parameters:
    ///   - rValue: Red value
    ///   - gValue: Green value
    ///   - bValue: Blue value
    /// - Returns: UIColor
    func colorFromRGB(rValue: UInt, gValue: UInt, bValue: UInt) -> UIColor {
        
        return UIColor(
            red: CGFloat(rValue) / 255.0,
            green: CGFloat(gValue) / 255.0,
            blue: CGFloat(bValue) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    // MARK: Color from HEXA to UIColor
    // var color1 = colorFromHexa("#d3d3d3")
    
    /// Get color using HEXA value
    ///
    /// - Parameter hex: HEXA code with '#' tag
    /// - Returns: UIColor
    func colorFromHexa (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
}
