//

import Foundation
import CoreText

// MARK: - RubyKanaFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var cjkVerticalRomanPlacement: Self { Self.init(identifier: kCJKVerticalRomanPlacementType) }
}

public struct CJKVerticalRomanPlacementFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var cjkVerticalRomanCenteredSelector: Self { .init(identifier: kCJKVerticalRomanCenteredSelector) }
    public static var cjkVerticalRomanHBaselineSelector: Self { .init(identifier: kCJKVerticalRomanHBaselineSelector) }
}

public extension FontFeatureDescriptor where Self == StandardFontFeatureDescriptor {
    static func cjkVerticalRomanPlacement(_ selector: CJKVerticalRomanPlacementFontFeatureSelectors) -> Self {
        .init(type: .cjkVerticalRomanPlacement, selector: selector)
    }
}
