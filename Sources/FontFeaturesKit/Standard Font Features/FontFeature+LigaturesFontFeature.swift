//

import Foundation
import CoreText

// MARK: - LigaturesFontFeatureType

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var ligatures: Self { Self.init(identifier: kLigaturesType) }
}

public struct LigaturesFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static func requiredLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kRequiredLigaturesOnSelector : kRequiredLigaturesOffSelector)
    }
    public static func commonLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kCommonLigaturesOnSelector : kCommonLigaturesOffSelector)
    }
    public static func rareLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kRareLigaturesOnSelector : kRareLigaturesOffSelector)
    }
    public static func logos(isOn: Bool) -> Self {
        .init(identifier: isOn ? kLogosOnSelector : kLogosOffSelector)
    }
    public static func rebusPictures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kRebusPicturesOnSelector : kRebusPicturesOffSelector)
    }
    public static func diphthongLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kDiphthongLigaturesOnSelector : kDiphthongLigaturesOffSelector)
    }
    public static func squaredLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kSquaredLigaturesOnSelector : kSquaredLigaturesOffSelector)
    }
    public static func abbrevSquaredLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kAbbrevSquaredLigaturesOnSelector : kAbbrevSquaredLigaturesOffSelector)
    }
    public static func symbolLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kSymbolLigaturesOnSelector : kSymbolLigaturesOffSelector)
    }
    public static func contextualLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kContextualLigaturesOnSelector : kContextualLigaturesOffSelector)
    }
    public static func historicalLigatures(isOn: Bool) -> Self {
        .init(identifier: isOn ? kHistoricalLigaturesOnSelector : kHistoricalLigaturesOffSelector)
    }
    
    public static var requiredLigatures: Self { requiredLigatures(isOn: true) }
    public static var commonLigatures: Self { commonLigatures(isOn: true) }
    public static var rareLigatures: Self { rareLigatures(isOn: true) }
    public static var logos: Self { logos(isOn: true) }
    public static var rebusPictures: Self { rebusPictures(isOn: true) }
    public static var diphthongLigatures: Self { diphthongLigatures(isOn: true) }
    public static var squaredLigatures: Self { squaredLigatures(isOn: true) }
    public static var abbrevSquaredLigatures: Self { abbrevSquaredLigatures(isOn: true) }
    public static var symbolLigatures: Self { symbolLigatures(isOn: true) }
    public static var contextualLigatures: Self { contextualLigatures(isOn: true) }
    public static var historicalLigatures: Self { historicalLigatures(isOn: true) }
}

public extension FontFeatureDescriptor where Self == StandardFontFeatureDescriptor {
    static func ligatures(_ selector: LigaturesFontFeatureSelectors) -> Self {
        .init(type: .ligatures, selector: selector)
    }
}
