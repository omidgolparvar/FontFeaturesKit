//

import Foundation
import CoreText

// MARK: - SmartSwashFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var smartSwash: Self { Self.init(identifier: kSmartSwashType) }
}

public struct SmartSwashFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func wordInitialSwashes(isOn: Bool) -> Self {
        .init(identifier: isOn ? kWordInitialSwashesOnSelector : kWordInitialSwashesOffSelector)
    }
    public static func wordFinalSwashes(isOn: Bool) -> Self {
        .init(identifier: isOn ? kWordFinalSwashesOnSelector : kWordFinalSwashesOffSelector)
    }
    public static func lineInitialSwashes(isOn: Bool) -> Self {
        .init(identifier: isOn ? kLineInitialSwashesOnSelector : kLineInitialSwashesOffSelector)
    }
    public static func lineFinalSwashes(isOn: Bool) -> Self {
        .init(identifier: isOn ? kLineFinalSwashesOnSelector : kLineFinalSwashesOffSelector)
    }
    public static func nonFinalSwashes(isOn: Bool) -> Self {
        .init(identifier: isOn ? kNonFinalSwashesOnSelector : kNonFinalSwashesOffSelector)
    }
    
    public static var wordInitialSwashes: Self { wordInitialSwashes(isOn: true) }
    public static var wordFinalSwashes: Self { wordFinalSwashes(isOn: true) }
    public static var lineInitialSwashes: Self { lineInitialSwashes(isOn: true) }
    public static var lineFinalSwashes: Self { lineFinalSwashes(isOn: true) }
    public static var nonFinalSwashes: Self { nonFinalSwashes(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func smartSwash(_ selector: SmartSwashFontFeatureSelectors) -> Self {
        .init(type: .smartSwash, selector: selector)
    }
}

