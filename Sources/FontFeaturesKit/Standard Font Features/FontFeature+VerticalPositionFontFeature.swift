//

import Foundation
import CoreText

// MARK: - VerticalPositionFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var verticalPosition: Self { Self.init(identifier: kVerticalPositionType) }
}

public struct VerticalPositionFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static var normalPosition: Self { .init(identifier: kNormalPositionSelector) }
	public static var superiors: Self { .init(identifier: kSuperiorsSelector) }
	public static var inferiors: Self { .init(identifier: kInferiorsSelector) }
	public static var ordinals: Self { .init(identifier: kOrdinalsSelector) }
	public static var scientificInferiors: Self { .init(identifier: kScientificInferiorsSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func verticalPosition(_ selector: VerticalPositionFontFeatureSelectors) -> Self {
		.init(type: .verticalPosition, selector: selector)
	}
}

