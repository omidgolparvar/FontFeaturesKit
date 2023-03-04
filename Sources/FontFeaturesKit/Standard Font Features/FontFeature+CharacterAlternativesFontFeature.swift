//

import Foundation
import CoreText

// MARK: - CharacterAlternativesFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var characterAlternatives: Self { Self.init(identifier: kCharacterAlternativesType) }
}

public struct CharacterAlternativesFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var noAlternates: Self { .init(identifier: kNoAlternatesSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func characterAlternatives(_ selector: CharacterAlternativesFontFeatureSelectors) -> Self {
		.init(type: .characterAlternatives, selector: selector)
	}
}

