//

import Foundation
import CoreText

// MARK: - FractionsFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var fractions: Self { Self.init(identifier: kFractionsType) }
}

public struct FractionsFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var noFractions: Self { .init(identifier: kNoFractionsSelector) }
	public static var verticalFractions: Self { .init(identifier: kVerticalFractionsSelector) }
	public static var diagonalFractions: Self { .init(identifier: kDiagonalFractionsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func fractions(_ selector: FractionsFontFeatureSelectors) -> Self {
		.init(type: .fractions, selector: selector)
	}
}

