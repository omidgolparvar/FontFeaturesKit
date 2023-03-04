//

import Foundation
import CoreText

// MARK: - LowerCaseFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var lowerCase: Self { Self.init(identifier: kLowerCaseType) }
}

public struct LowerCaseFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var defaultUpperCase: Self { .init(identifier: kDefaultLowerCaseSelector) }
	public static var lowerCaseSmallCaps: Self { .init(identifier: kLowerCaseSmallCapsSelector) }
	public static var lowerCasePetiteCaps: Self { .init(identifier: kLowerCasePetiteCapsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func lowerCase(_ selector: LowerCaseFontFeatureSelectors) -> Self {
		.init(type: .lowerCase, selector: selector)
	}
}
