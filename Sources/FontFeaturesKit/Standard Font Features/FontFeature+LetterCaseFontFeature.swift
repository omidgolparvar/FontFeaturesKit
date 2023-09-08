//

import Foundation
import CoreText

// MARK: - LetterCaseFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    @available(*, deprecated, message: "use `lowerCase` or `upperCase` instead")
    static var letterCase: Self { Self.init(identifier: kLetterCaseType) }
}

public struct LetterCaseFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var upperAndLowerCase: Self { .init(identifier: kUpperAndLowerCaseSelector) }
    public static var allCaps: Self { .init(identifier: kAllCapsSelector) }
    public static var allLowerCase: Self { .init(identifier: kAllLowerCaseSelector) }
    public static var smallCaps: Self { .init(identifier: kSmallCapsSelector) }
    public static var initialCaps: Self { .init(identifier: kInitialCapsSelector) }
    public static var initialCapsAndSmallCaps: Self { .init(identifier: kInitialCapsAndSmallCapsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    @available(*, deprecated, message: "use `lowerCase(_:)` or `upperCase(_:)` instead")
    static func letterCase(_ selector: LetterCaseFontFeatureSelectors) -> Self {
        .init(type: .letterCase, selector: selector)
    }
}

