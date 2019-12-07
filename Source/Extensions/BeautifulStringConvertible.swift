//
//  BeautifulStringConvertible.swift
//  AttriBeauty
//
//  Created by 이동영 on 2019/12/08.
//

import Foundation

// MARK: - AttributeStringConvertible
public protocol BeautifulStringConvertible {
    
    func beautfiy() -> BeautifulString
}

// MARK: - String

extension String: BeautifulStringConvertible {
    
    public func beautfiy() -> BeautifulString {
        return BeautifulString(string: self)
    }
}

// MARK: - NSAttributedString
extension NSAttributedString: BeautifulStringConvertible {
    
    public  func beautfiy() -> BeautifulString {
        return BeautifulString(string: self.string)
    }
}
