//

import Foundation
import CoreText

// MARK: - ContextualAlternatesFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var contextualAlternates: Self { Self.init(identifier: kContextualAlternatesType) }
}

public struct ContextualAlternatesFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func contextualAlternates(isOn: Bool) -> Self {
        .init(identifier: isOn ? kContextualAlternatesOnSelector : kContextualAlternatesOffSelector)
    }
    public static func swashAlternates(isOn: Bool) -> Self {
        .init(identifier: isOn ? kSwashAlternatesOnSelector : kSwashAlternatesOffSelector)
    }
    public static func contextualSwashAlternates(isOn: Bool) -> Self {
        .init(identifier: isOn ? kContextualSwashAlternatesOnSelector : kContextualSwashAlternatesOffSelector)
    }
    
    public static var contextualAlternates: Self { contextualAlternates(isOn: true) }
    public static var swashAlternates: Self { swashAlternates(isOn: true) }
    public static var contextualSwashAlternates: Self { contextualSwashAlternates(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func contextualAlternates(_ selector: ContextualAlternatesFontFeatureSelectors) -> Self {
        .init(type: .contextualAlternates, selector: selector)
    }
}

