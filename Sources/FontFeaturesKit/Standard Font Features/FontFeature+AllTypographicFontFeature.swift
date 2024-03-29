//

import Foundation
import CoreText

// MARK: - AllTypographicFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var allTypographic: Self { Self.init(identifier: kAllTypographicFeaturesType) }
}

public struct AllTypographicFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func allTypeFeatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kAllTypeFeaturesOnSelector : kAllTypeFeaturesOffSelector)
    }
    
    public static var allTypeFeatures: Self { allTypeFeatures(isOn: true) }
}

public extension FontFeatureDescriptor where Self == StandardFontFeatureDescriptor {
    static func allTypographic(_ selector: AllTypographicFontFeatureSelectors) -> FontFeatureDescriptor {
        Self.init(type: .allTypographic, selector: selector)
    }
}
