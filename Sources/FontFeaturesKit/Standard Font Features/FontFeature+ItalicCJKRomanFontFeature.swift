//

import Foundation
import CoreText

// MARK: - RubyKanaFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var italicCJKRoman: Self { Self.init(identifier: kItalicCJKRomanType) }
}

public struct ItalicCJKRomanFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	@available(*, deprecated, message: "use `cjkItalicRoman(isOn: false)` instead instead")
	public static var noCJKItalicRoman: Self { .init(identifier: kNoCJKItalicRomanSelector) }
	@available(*, deprecated, message: "use `cjkItalicRoman(isOn: true)` instead instead")
	public static var cjkItalicRomanItem: Self { .init(identifier: kCJKItalicRomanSelector) }
	public static func cjkItalicRoman(isOn: Bool) -> Self {
		.init(identifier: isOn ? kCJKItalicRomanOnSelector : kCJKItalicRomanOffSelector)
	}
	
	public static var cjkItalicRoman: Self { cjkItalicRoman(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func italicCJKRoman(_ selector: ItalicCJKRomanFontFeatureSelectors) -> Self {
		.init(type: .italicCJKRoman, selector: selector)
	}
}
