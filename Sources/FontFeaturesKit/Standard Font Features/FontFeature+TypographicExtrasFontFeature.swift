//

import Foundation
import CoreText

// MARK: - TypographicExtrasFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var typographicExtras: Self { Self.init(identifier: kTypographicExtrasType) }
}

public struct TypographicExtrasFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static func hyphensToEmDash(isOn: Bool) -> Self {
		.init(identifier: isOn ? kHyphensToEmDashOnSelector : kHyphensToEmDashOffSelector)
	}
	public static func hyphenToEnDash(isOn: Bool) -> Self {
		.init(identifier: isOn ? kHyphenToEnDashOnSelector : kHyphenToEnDashOffSelector)
	}
	public static func slashedZero(isOn: Bool) -> Self {
		.init(identifier: isOn ? kSlashedZeroOnSelector : kSlashedZeroOffSelector)
	}
	public static func formInterrobang(isOn: Bool) -> Self {
		.init(identifier: isOn ? kFormInterrobangOnSelector : kFormInterrobangOffSelector)
	}
	public static func smartQuotes(isOn: Bool) -> Self {
		.init(identifier: isOn ? kSmartQuotesOnSelector : kSmartQuotesOffSelector)
	}
	public static func periodsToEllipsis(isOn: Bool) -> Self {
		.init(identifier: isOn ? kPeriodsToEllipsisOnSelector : kPeriodsToEllipsisOffSelector)
	}
	
	public static var hyphensToEmDash: Self { hyphensToEmDash(isOn: true) }
	public static var hyphenToEnDash: Self { hyphenToEnDash(isOn: true) }
	public static var slashedZero: Self { slashedZero(isOn: true) }
	public static var formInterrobang: Self { formInterrobang(isOn: true) }
	public static var smartQuotes: Self { smartQuotes(isOn: true) }
	public static var periodsToEllipsis: Self { periodsToEllipsis(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func typographicExtras(_ selector: TypographicExtrasFontFeatureSelectors) -> Self {
		.init(type: .typographicExtras, selector: selector)
	}
}

