//

import Foundation
import CoreText

// MARK: - TextSpacingFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var textSpacing: Self { Self.init(identifier: kTextSpacingType) }
}

public struct TextSpacingFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var proportionalText: Self { .init(identifier: kProportionalTextSelector) }
    public static var monospacedText: Self { .init(identifier: kMonospacedTextSelector) }
    public static var halfWidthText: Self { .init(identifier: kHalfWidthTextSelector) }
    public static var thirdWidthText: Self { .init(identifier: kThirdWidthTextSelector) }
    public static var quarterWidthText: Self { .init(identifier: kQuarterWidthTextSelector) }
    public static var altProportionalText: Self { .init(identifier: kAltProportionalTextSelector) }
    public static var altHalfWidthText: Self { .init(identifier: kAltHalfWidthTextSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func textSpacing(_ selector: TextSpacingFontFeatureSelectors) -> Self {
        .init(type: .textSpacing, selector: selector)
    }
}

