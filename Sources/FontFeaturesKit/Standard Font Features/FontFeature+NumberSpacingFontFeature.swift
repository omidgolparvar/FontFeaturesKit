//

import Foundation
import CoreText

// MARK: - NumberSpacingFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var numberSpacing: Self { Self.init(identifier: kNumberSpacingType) }
}

public struct NumberSpacingFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var monospacedNumbers: Self { .init(identifier: kMonospacedNumbersSelector) }
    public static var proportionalNumbers: Self { .init(identifier: kProportionalNumbersSelector) }
    public static var thirdWidthNumbers: Self { .init(identifier: kThirdWidthNumbersSelector) }
    public static var quarterWidthNumbers: Self { .init(identifier: kQuarterWidthNumbersSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func numberSpacing(_ selector: NumberSpacingFontFeatureSelectors) -> Self {
        .init(type: .numberSpacing, selector: selector)
    }
}

