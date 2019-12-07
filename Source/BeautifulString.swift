//
//  BeautifulString.swift
//  AttriBeauty
//
//  Created by 이동영 on 2019/12/08.
//

import Foundation

// MARK: - Attribute

public typealias Attribute = (key: NSAttributedString.Key, value: Any)

// MARK: - BeautifulString

public typealias BeautifulString = NSMutableAttributedString

// MARK: - BeautifulString

extension BeautifulString {
    
    var range: NSRange {
        return NSRange(location: 0, length: self.length)
    }
}

// MARK: - BeautifulString

extension BeautifulString {
    
    public func addAttribute(_ attribute: Attribute, range: NSRange) {
        addAttribute(attribute.key, value: attribute.value, range: range)
    }
}
