//

import Foundation
import CoreText

// MARK: - UpperCaseFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var upperCase: Self { Self.init(identifier: kUpperCaseType) }
}

public struct UpperCaseFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var defaultUpperCase: Self { .init(identifier: kDefaultUpperCaseSelector) }
	public static var upperCaseSmallCaps: Self { .init(identifier: kUpperCaseSmallCapsSelector) }
	public static var upperCasePetiteCaps: Self { .init(identifier: kUpperCasePetiteCapsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func upperCase(_ selector: UpperCaseFontFeatureSelectors) -> Self {
		.init(type: .upperCase, selector: selector)
	}
}
