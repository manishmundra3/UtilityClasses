//
//  DateFormatter.swift
//  MMUtility
//
//  Created by manish on 11/04/17.
//  Copyright © 2017 manish. All rights reserved.
//

import UIKit

// MARK: dd-MM-yyyy
 let dtFormatter_dd_MM_yyyy: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd-MM-yyyy"
    return formatter
}()

// MARK: MM-dd-yyyy
 let dtFormatter_MM_dd_yyyy: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy"
    return formatter
}()

// MARK: yyyy-MM-dd
 let dtFormatter_yyyy_MM_dd: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter
}()

// MARK: dd/MM/yyyy
 let dtFormatter_Slash_ddMMyyyy: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    return formatter
}()

// MARK: MM/dd/yyyy
 let dtFormatter_Slash_MMddyyyy: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd/yyyy"
    return formatter
}()

// MARK: yyyy/MM/dd
 let dtFormatter_Slash_yyyyMMdd: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    return formatter
}()

// MARK: dd-MM-yyyy
let dtFormatter_dd: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd"
    return formatter
}()

// MARK: MM-dd-yyyy
let dtFormatter_MM: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM"
    return formatter
}()

// MARK: yyyy-MM-dd
let dtFormatter_yyyy: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy"
    return formatter
}()

// MARK: dd/MM/yyyy
let dtFormatter_Slash_ddMMyyyy_HHmmss: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
    return formatter
}()

class MMDateFormatter: NSObject {

   
   
    

    
}
