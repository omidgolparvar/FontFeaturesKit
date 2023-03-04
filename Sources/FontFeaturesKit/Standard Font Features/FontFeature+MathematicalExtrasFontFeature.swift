//

import Foundation
import CoreText

// MARK: - MathematicalExtrasFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var mathematicalExtras: Self { Self.init(identifier: kMathematicalExtrasType) }
}

public struct MathematicalExtrasFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static func hyphenToMinus(isOn: Bool) -> Self {
		.init(identifier: isOn ? kHyphenToMinusOnSelector : kHyphenToMinusOffSelector)
	}
	public static func asteriskToMultiply(isOn: Bool) -> Self {
		.init(identifier: isOn ? kAsteriskToMultiplyOnSelector : kAsteriskToMultiplyOffSelector)
	}
	public static func slashToDivide(isOn: Bool) -> Self {
		.init(identifier: isOn ? kSlashToDivideOnSelector : kSlashToDivideOffSelector)
	}
	public static func inequalityLigatures(isOn: Bool) -> Self {
		.init(identifier: isOn ? kInequalityLigaturesOnSelector : kInequalityLigaturesOffSelector)
	}
	public static func exponents(isOn: Bool) -> Self {
		.init(identifier: isOn ? kExponentsOnSelector : kExponentsOffSelector)
	}
	public static func mathematicalGreek(isOn: Bool) -> Self {
		.init(identifier: isOn ? kMathematicalGreekOnSelector : kMathematicalGreekOffSelector)
	}
	
	public static var hyphenToMinus: Self { hyphenToMinus(isOn: true) }
	public static var asteriskToMultiply: Self { asteriskToMultiply(isOn: true) }
	public static var slashToDivide: Self { slashToDivide(isOn: true) }
	public static var inequalityLigatures: Self { inequalityLigatures(isOn: true) }
	public static var exponents: Self { exponents(isOn: true) }
	public static var mathematicalGreek: Self { mathematicalGreek(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func mathematicalExtras(_ selector: MathematicalExtrasFontFeatureSelectors) -> Self {
		.init(type: .mathematicalExtras, selector: selector)
	}
}

