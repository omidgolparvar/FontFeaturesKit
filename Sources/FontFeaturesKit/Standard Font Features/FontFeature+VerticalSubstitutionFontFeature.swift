//

import Foundation
import CoreText

// MARK: - VerticalSubstitutionFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
	static var verticalSubstitution: Self { Self.init(identifier: kVerticalSubstitutionType) }
}

public struct VerticalSubstitutionFontFeatureSelectors: FontFeatureSelectorIdentifier {
	public let identifier: Int
	
	public init(identifier: Int) {
		self.identifier = identifier
	}
	
	public static func substituteVerticalForms(isOn: Bool) -> Self {
		.init(identifier: isOn ? kSubstituteVerticalFormsOnSelector : kSubstituteVerticalFormsOffSelector)
	}
	
	public static var substituteVerticalForms: Self { substituteVerticalForms(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
	static func verticalSubstitution(_ selector: VerticalSubstitutionFontFeatureSelectors) -> Self {
		.init(type: .verticalSubstitution, selector: selector)
	}
}

