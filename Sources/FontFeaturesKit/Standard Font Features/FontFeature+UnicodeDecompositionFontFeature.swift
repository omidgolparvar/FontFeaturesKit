//

import Foundation
import CoreText

// MARK: - UnicodeDecompositionFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var unicodeDecomposition: Self { Self.init(identifier: kUnicodeDecompositionType) }
}

public struct UnicodeDecompositionFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func canonicalComposition(isOn: Bool) -> Self {
        .init(identifier: isOn ? kCanonicalCompositionOnSelector : kCanonicalCompositionOffSelector)
    }
    public static func compatibilityComposition(isOn: Bool) -> Self {
        .init(identifier: isOn ? kCompatibilityCompositionOnSelector : kCompatibilityCompositionOffSelector)
    }
    public static func transcodingComposition(isOn: Bool) -> Self {
        .init(identifier: isOn ? kTranscodingCompositionOnSelector : kTranscodingCompositionOffSelector)
    }
    
    public static var canonicalComposition: Self { canonicalComposition(isOn: true) }
    public static var compatibilityComposition: Self { compatibilityComposition(isOn: true) }
    public static var transcodingComposition: Self { transcodingComposition(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func unicodeDecomposition(_ selector: UnicodeDecompositionFontFeatureSelectors) -> Self {
        .init(type: .unicodeDecomposition, selector: selector)
    }
}

