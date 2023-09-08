//

import Foundation
import CoreText

// MARK: - LinguisticRearrangementFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var linguisticRearrangement: Self { Self.init(identifier: kLinguisticRearrangementType) }
}

public struct LinguisticRearrangementFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func linguisticRearrangement(isOn: Bool) -> Self {
        .init(identifier: isOn ? kLinguisticRearrangementOnSelector : kLinguisticRearrangementOffSelector)
    }
    
    public static var linguisticRearrangement: Self { linguisticRearrangement(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func linguisticRearrangement(_ selector: LinguisticRearrangementFontFeatureSelectors) -> Self {
        .init(type: .linguisticRearrangement, selector: selector)
    }
}

