import UIKit


extension BeautifulString {
    
    public var attriBeauty: AttriBeautyDSL {
        return AttriBeautyDSL(self)
    }
}

// MARK: - AttriBeautyDSL

public class AttriBeautyDSL {
    
    // MARK: - Dependencies
    
    private let beautifulString: BeautifulString
    
    // MARK: - Properties
    
    private var attributes: [Attribute] = []
    private var ranges: [NSRange] = []
    private var paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
    
    // MARK: - Initializer
    
    init(_ beautifulString: BeautifulString) {
        self.beautifulString = beautifulString
    }
    
    // MARK: - Attributes
    
    public func fgColor(_ color: UIColor) -> Self {
        appendRangeIfNeeded()
        attributes.append(Attribute(key: .foregroundColor, value: color))
        return self
    }
    
    public func bgColor(_ color: UIColor) -> Self {
        appendRangeIfNeeded()
        attributes.append(Attribute(key: .backgroundColor, value: color))
        return self
    }
    
    public func font(_ font: UIFont) -> Self {
        appendRangeIfNeeded()
        attributes.append(Attribute(key: .font, value: font))
        return self
    }
    
    // MARK: - ParagraphStyles
    
    public func align(_ alignment: NSTextAlignment) -> Self {
        appendRangeIfNeeded()
        paragraphStyle.alignment = alignment
        attributes.append(Attribute(key: .paragraphStyle, value: paragraphStyle.copy() as! NSParagraphStyle))
        return self
    }
    
    public func range(_ range: NSRange) -> Self {
        ranges.append(range)
        return self
    }

    public func regex(_ pattern: String) -> Self {
        guard let attribute = attributes.popLast() else { return self }
        
        guard let regex = try? NSRegularExpression(pattern: pattern) else { return self }
        
        regex.matches(in: beautifulString.string, range: beautifulString.range).forEach {
            attributes.append(attribute)
            ranges.append($0.range)
        }
        
        return self
    }
    
    // MARK: - Actions
    
    @discardableResult
    public func apply() -> BeautifulString {
        appendRangeIfNeeded()
        for i in attributes.indices {
            beautifulString.addAttribute(attributes[i], range: ranges[i])
        }
        return beautifulString
    }
    
    private func appendRangeIfNeeded() {
        guard attributes.count != ranges.count else { return }
        ranges.append(beautifulString.range)
    }
}


