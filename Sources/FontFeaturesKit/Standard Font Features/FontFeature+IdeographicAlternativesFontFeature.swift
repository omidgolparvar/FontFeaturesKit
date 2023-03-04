//

import Foundation
import CoreText

// MARK: - IdeographicAlternativesFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var ideographicAlternatives: Self { Self.init(identifier: kIdeographicAlternativesType) }
}

public struct IdeographicAlternativesFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var noIdeographicAlternativesSelector: Self { .init(identifier: kNoIdeographicAlternativesSelector) }
	public static var ideographicAlt1: Self { .init(identifier: kIdeographicAltOneSelector) }
	public static var ideographicAlt2: Self { .init(identifier: kIdeographicAltTwoSelector) }
	public static var ideographicAlt3: Self { .init(identifier: kIdeographicAltThreeSelector) }
	public static var ideographicAlt4: Self { .init(identifier: kIdeographicAltFourSelector) }
	public static var ideographicAlt5: Self { .init(identifier: kIdeographicAltFiveSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func ideographicAlternatives(_ selector: IdeographicAlternativesFontFeatureSelectors) -> Self {
		.init(type: .ideographicAlternatives, selector: selector)
	}
}
