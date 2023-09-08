//

import Foundation
import CoreText

// MARK: - StyleOptionsFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var styleOptions: Self { Self.init(identifier: kStyleOptionsType) }
}

public struct StyleOptionsFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var noStyleOptions: Self { .init(identifier: kNoStyleOptionsSelector) }
    public static var displayText: Self { .init(identifier: kDisplayTextSelector) }
    public static var engravedText: Self { .init(identifier: kEngravedTextSelector) }
    public static var illuminatedCaps: Self { .init(identifier: kIlluminatedCapsSelector) }
    public static var titlingCaps: Self { .init(identifier: kTitlingCapsSelector) }
    public static var tallCaps: Self { .init(identifier: kTallCapsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func styleOptions(_ selector: StyleOptionsFontFeatureSelectors) -> Self {
        .init(type: .styleOptions, selector: selector)
    }
}

