//

import Foundation
import CoreText

// MARK: - RubyKanaFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var cjkSymbolAlternatives: Self { Self.init(identifier: kCJKSymbolAlternativesType) }
}

public struct CJKSymbolAlternativesFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var noCJKSymbolAlternativesSelector: Self { .init(identifier: kNoCJKSymbolAlternativesSelector) }
    public static var cjkSymbolAltOne: Self { .init(identifier: kCJKSymbolAltOneSelector) }
    public static var cjkSymbolAltTwo: Self { .init(identifier: kCJKSymbolAltTwoSelector) }
    public static var cjkSymbolAltThree: Self { .init(identifier: kCJKSymbolAltThreeSelector) }
    public static var cjkSymbolAltFour: Self { .init(identifier: kCJKSymbolAltFourSelector) }
    public static var cjkSymbolAltFive: Self { .init(identifier: kCJKSymbolAltFiveSelector) }
}

public extension FontFeatureDescriptor where Self == StandardFontFeatureDescriptor {
    static func cjkSymbolAlternatives(_ selector: CJKSymbolAlternativesFontFeatureSelectors) -> Self {
        .init(type: .cjkSymbolAlternatives, selector: selector)
    }
}
