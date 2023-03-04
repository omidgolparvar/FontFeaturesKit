//

import Foundation
import CoreText

// MARK: - AlternateKanaFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var alternateKana: Self { Self.init(identifier: kAlternateKanaType) }
}

public struct AlternateKanaFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static func alternateHorizKana(isOn: Bool) -> Self {
		.init(identifier: isOn ? kAlternateHorizKanaOnSelector : kAlternateHorizKanaOffSelector)
	}
	public static func alternateVertKanaOn(isOn: Bool) -> Self {
		.init(identifier: isOn ? kAlternateVertKanaOnSelector : kAlternateVertKanaOffSelector)
	}
	
	public static var alternateHorizKana: Self { alternateHorizKana(isOn: true) }
	public static var alternateVertKanaOn: Self { alternateVertKanaOn(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func alternateKana(_ selector: AlternateKanaFontFeatureSelectors) -> Self {
		.init(type: .alternateKana, selector: selector)
	}
}

