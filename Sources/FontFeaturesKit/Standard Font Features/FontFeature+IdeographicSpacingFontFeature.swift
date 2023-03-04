//

import Foundation
import CoreText

// MARK: - IdeographicSpacingFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var ideographicSpacing: Self { Self.init(identifier: kIdeographicSpacingType) }
}

public struct IdeographicSpacingFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var fullWidthIdeographs: Self { .init(identifier: kFullWidthIdeographsSelector) }
	public static var proportionalIdeographs: Self { .init(identifier: kProportionalIdeographsSelector) }
	public static var halfWidthIdeographs: Self { .init(identifier: kHalfWidthIdeographsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func ideographicSpacing(_ selector: IdeographicSpacingFontFeatureSelectors) -> Self {
		.init(type: .ideographicSpacing, selector: selector)
	}
}

