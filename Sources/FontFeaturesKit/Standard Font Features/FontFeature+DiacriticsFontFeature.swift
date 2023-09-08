//

import Foundation
import CoreText

// MARK: - DiacriticsFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var diacritics: Self { Self.init(identifier: kDiacriticsType) }
}

public struct DiacriticsFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var showDiacritics: Self { .init(identifier: kShowDiacriticsSelector) }
    public static var hideDiacritics: Self { .init(identifier: kHideDiacriticsSelector) }
    public static var decomposeDiacritics: Self { .init(identifier: kDecomposeDiacriticsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func diacritics(_ selector: DiacriticsFontFeatureSelectors) -> Self {
        .init(type: .diacritics, selector: selector)
    }
}

