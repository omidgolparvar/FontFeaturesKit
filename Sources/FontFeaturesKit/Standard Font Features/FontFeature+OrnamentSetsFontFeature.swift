//

import Foundation
import CoreText

// MARK: - OrnamentSetsFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var ornamentSets: Self { Self.init(identifier: kOrnamentSetsType) }
}

public struct OrnamentSetsFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var noOrnaments: Self { .init(identifier: kNoOrnamentsSelector) }
	public static var dingbats: Self { .init(identifier: kDingbatsSelector) }
	public static var piCharacters: Self { .init(identifier: kPiCharactersSelector) }
	public static var fleurons: Self { .init(identifier: kFleuronsSelector) }
	public static var decorativeBorders: Self { .init(identifier: kDecorativeBordersSelector) }
	public static var internationalSymbols: Self { .init(identifier: kInternationalSymbolsSelector) }
	public static var mathSymbols: Self { .init(identifier: kMathSymbolsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func ornamentSets(_ selector: OrnamentSetsFontFeatureSelectors) -> Self {
		.init(type: .ornamentSets, selector: selector)
	}
}

