//

import Foundation
import CoreText

// MARK: - RubyKanaFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var cjkRomanSpacing: Self { Self.init(identifier: kCJKRomanSpacingType) }
}

public struct CJKRomanSpacingFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var halfWidthCJKRomanSelector: Self { .init(identifier: kHalfWidthCJKRomanSelector) }
    public static var proportionalCJKRomanSelector: Self { .init(identifier: kProportionalCJKRomanSelector) }
    public static var defaultCJKRomanSelector: Self { .init(identifier: kDefaultCJKRomanSelector) }
    public static var fullWidthCJKRomanSelector: Self { .init(identifier: kFullWidthCJKRomanSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func cjkRomanSpacing(_ selector: CJKRomanSpacingFontFeatureSelectors) -> Self {
        .init(type: .cjkRomanSpacing, selector: selector)
    }
}
