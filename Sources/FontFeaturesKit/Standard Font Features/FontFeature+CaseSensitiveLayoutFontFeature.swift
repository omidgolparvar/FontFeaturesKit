//

import Foundation
import CoreText

// MARK: - CaseSensitiveLayoutFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var caseSensitiveLayout: Self { Self.init(identifier: kCaseSensitiveLayoutType) }
}

public struct CaseSensitiveLayoutFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func caseSensitiveLayout(isOn: Bool) -> Self {
        .init(identifier: isOn ? kCaseSensitiveLayoutOnSelector : kCaseSensitiveLayoutOffSelector)
    }
    public static func caseSensitiveSpacing(isOn: Bool) -> Self {
        .init(identifier: isOn ? kCaseSensitiveSpacingOnSelector : kCaseSensitiveSpacingOffSelector)
    }
    
    public static var caseSensitiveLayout: Self { caseSensitiveLayout(isOn: true) }
    public static var caseSensitiveSpacing: Self { caseSensitiveSpacing(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func caseSensitiveLayout(_ selector: CaseSensitiveLayoutFontFeatureSelectors) -> Self {
        .init(type: .caseSensitiveLayout, selector: selector)
    }
}

