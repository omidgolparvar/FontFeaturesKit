//

import Foundation
import CoreText

// MARK: - DesignComplexityFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var designComplexity: Self { Self.init(identifier: kDesignComplexityType) }
}

public struct DesignComplexityFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var designLevel1: Self { .init(identifier: kDesignLevel1Selector) }
    public static var designLevel2: Self { .init(identifier: kDesignLevel2Selector) }
    public static var designLevel3: Self { .init(identifier: kDesignLevel3Selector) }
    public static var designLevel4: Self { .init(identifier: kDesignLevel4Selector) }
    public static var designLevel5: Self { .init(identifier: kDesignLevel5Selector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func designComplexity(_ selector: DesignComplexityFontFeatureSelectors) -> Self {
        .init(type: .designComplexity, selector: selector)
    }
}

