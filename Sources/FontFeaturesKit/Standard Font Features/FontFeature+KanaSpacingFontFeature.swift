//

import Foundation
import CoreText

// MARK: - KanaSpacingFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var kanaSpacing: Self { Self.init(identifier: kKanaSpacingType) }
}

public struct KanaSpacingFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var fullWidthKana: Self { .init(identifier: kFullWidthKanaSelector) }
    public static var proportionalKana: Self { .init(identifier: kProportionalKanaSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func kanaSpacing(_ selector: KanaSpacingFontFeatureSelectors) -> Self {
        .init(type: .kanaSpacing, selector: selector)
    }
}

