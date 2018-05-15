//
//  String+Extension.swift
//  Smartr
//
//  Created by Amit Saxena on 30/03/17.
//  Copyright © 2017 Appdilly. All rights reserved.
//

import Foundation

extension String {
    func encodeString() -> String {
        let messageData = self.data(using: String.Encoding.nonLossyASCII)
        let encodeMessage = String(data: messageData!, encoding: String.Encoding.utf8)
        return encodeMessage!
    }

    func decodeString() -> String {
        let data: NSData = self.data(using: String.Encoding.utf8)! as NSData
        let decodeMessage = String(data: data as Data, encoding: String.Encoding.nonLossyASCII)
        return decodeMessage!
    }
    
    /**
     Strips the specified characters from the beginning of string.
     
     - parameter set: Give character set to apply on string for trimming
     
     - returns: A String trimmed after left whitespace
     */
    func trimmedLeft(characterSet set: CharacterSet = CharacterSet.whitespacesAndNewlines) -> String {
        
        if let range = rangeOfCharacter(from: set.inverted) {
            return String(self[range.lowerBound ..< endIndex])
        }
        
        return ""
    }
    
    @available(*, unavailable, message: "use 'trimmedLeft' instead") func ltrimmed(_ set: CharacterSet = CharacterSet.whitespacesAndNewlines) -> String {
        
        return trimmedLeft(characterSet: set)
    }
    
    /**
     Strips the specified characters from the end of string.
     
     - parameter set: Give character set to apply on string for trimming
     
     - returns: A String trimmed after right whitespace
     */
    func trimmedRight(characterSet set: CharacterSet = CharacterSet.whitespacesAndNewlines) -> String {
        if let range = rangeOfCharacter(from: set.inverted, options: NSString.CompareOptions.backwards) {
            return String(self[startIndex ..< range.upperBound])
        }
        return ""
    }
    
    @available(*, unavailable, message: "use 'trimmedRight' instead") func rtrimmed(_ set: CharacterSet = CharacterSet.whitespacesAndNewlines) -> String {
        return trimmedRight(characterSet: set)
    }
    
    /**
     Strips whitespaces from both the beginning and the end of string.
     
     - returns: A String after trimmed white space
     */
    func trimmed() -> String {
        
        return trimmedLeft().trimmedRight()
    }
}
