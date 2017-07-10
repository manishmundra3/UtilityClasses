//
//  MMStringValidationUtility.swift
//  MMUtility
//
//  Created by manish on 11/04/17.
//  Copyright © 2017 manish. All rights reserved.
//

import UIKit

// Just source , but code is not used from below source
// https://github.com/gkaimakas/SwiftValidators/blob/master/Sources/Validator.swift





class MMStringValidationUtility: NSObject {

    
    // All Regex
    struct Regex {
        static let
        EmailRegex: String = "[\\w._%+-|]+@[\\w0-9.-]+\\.[A-Za-z]{2,6}",
        AlphaRegex: String = "[a-zA-Z]+",
        Base64Regex: String = "(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?",
        CreditCardRegex: String = "(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\\d{3})\\d{11})",
        HexColorRegex: String = "#?([0-9A-F]{3}|[0-9A-F]{6})",
        HexadecimalRegex: String = "[0-9A-F]+",
        ASCIIRegex: String = "[\\x00-\\x7F]+",
        NumericRegex: String = "[-+]?[0-9]+",
        FloatRegex: String = "([\\+-]?\\d+)?\\.?\\d*([eE][\\+-]\\d+)?",
        IPRegex: [String:String] = [
            "4": "(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})",
            "6": "[0-9A-Fa-f]{1,4}"
        ],
        ISBNRegex: [String:String] = [
            "10": "(?:[0-9]{9}X|[0-9]{10})",
            "13": "(?:[0-9]{13})"
        ],
        AlphanumericRegex: String = "[\\d[A-Za-z]]+"
        
        private init() {}
    }
    

    
    // MARK: Email Validation
    
    /// Check Email is valid or not
    ///
    /// - Parameter text: String which we need to validate
    /// - Returns: True if email text valid or False
    func isValidEmail(text:String) -> Bool {
        
        let emailRegEx = MMStringValidationUtility.Regex.EmailRegex //"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: text)
    }
    
    
    /// Trimming string text
    ///
    /// - Parameter text: Strinf text which we need to trim
    /// - Returns: Trimmed string text
    func trimming(text: String) -> String
    {
          return text.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
    }

    
    //MARK: check string is blank or not
    
    /// Check string is wether blank or not
    ///
    /// - Parameter text: String text
    /// - Returns: True if string is blank or False
    func isStringBlank(text: String?) -> Bool
    {
        var isBlank: Bool = false
        let aStr = text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if aStr != nil || (aStr?.characters.count)! > 0 {
            isBlank = false
        }else {
            isBlank = true
        }
        
        return isBlank
    }
    
    
    /// Get count from string
    ///
    /// - Parameter text: String text from which we need to get count
    /// - Returns: Count of text
    func count(text: String?) -> Int {

        var count: Int = 0
        let aStr = text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if aStr != nil || (aStr?.characters.count)! > 0 {

            count = (aStr?.characters.count)!
        }
        
        return count
        
    }
    
    
    /// Get max length
    ///
    /// - Parameters:
    ///   - text: Text in which we have to check length
    ///   - length: Length for check condition
    /// - Returns: True is length is valid or False
    func maxLength(text: String?, length: Int) -> Bool {
        var isMaxLength: Bool = false
        let aStr = text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if aStr != nil || (aStr?.characters.count)! > 0 {
            
            if (aStr?.characters.count)! <= length {
                isMaxLength = true
            }else{
                isMaxLength = false
            }

        }else {
            isMaxLength = false
        }
        
        return isMaxLength
    }
    
    /// Get min length
    ///
    /// - Parameters:
    ///   - text: Text in which we have to check length
    ///   - length: Length for check condition
    /// - Returns: True is length is valid or False
    func minLength(text: String?, length: Int) -> Bool {
        var isMinLength: Bool = false
        let aStr = text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if aStr != nil || (aStr?.characters.count)! > 0 {
            
            if (aStr?.characters.count)! <= length {
                isMinLength = true
            }else{
                isMinLength = false
            }
            
        }else {
            isMinLength = false
        }
        
        return isMinLength
    }
    
}
