//

import Foundation
import CoreText

// MARK: - NumberCaseFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var numberCase: Self { Self.init(identifier: kNumberCaseType) }
}

public struct NumberCaseFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var lowerCaseNumbers: Self { .init(identifier: kLowerCaseNumbersSelector) }
    public static var upperCaseNumbers: Self { .init(identifier: kUpperCaseNumbersSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func numberCase(_ selector: NumberCaseFontFeatureSelectors) -> Self {
        .init(type: .numberCase, selector: selector)
    }
}

