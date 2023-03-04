//

import Foundation
import UIKit

public extension UIFont {
	
	// MARK: - Custom Initializer
	
	convenience init(
		name: String,
		size: CGFloat,
		weight: Weight,
		features: [FontFeatureIdentifier]
	) {
		let descriptor = UIFontDescriptor(name: name, size: size)
			.addingAttributes([
				.traits: [UIFontDescriptor.TraitKey.weight: weight],
				.featureSettings: features.map(\.attributeValue)
			])
		
		self.init(descriptor: descriptor, size: 0)
	}
	
	// MARK: - Using FontFeatureIdentifier
	
	private func font(byAdding features: [FontFeatureIdentifier]) -> UIFont {
		let newFontDescriptor = self
			.fontDescriptor
			.addingAttributes([.featureSettings: features.map(\.attributeValue)])
		return UIFont(descriptor: newFontDescriptor, size: pointSize)
	}
	
	func featured(with features: [FontFeatureIdentifier]) -> UIFont {
		font(byAdding: features)
	}
	
	// MARK: - Using Standard Features
	
	func featured(withStandardFeatures features: [StandardFontFeatureIdentifier]) -> UIFont {
		font(byAdding: features)
	}
	
	func featured(withStandardFeatures features: StandardFontFeatureIdentifier...) -> UIFont {
		font(byAdding: features)
	}
	
	func featured(withStandardFeature feature: StandardFontFeatureIdentifier) -> UIFont {
		font(byAdding: [feature])
	}
	
	// MARK: - Using OpenType Features
	
	func featured(withOpenTypeFeatures features: [OpenTypeFontFeatureIdentifier]) -> UIFont {
		font(byAdding: features)
	}
	
	func featured(withOpenTypeFeatures features: OpenTypeFontFeatureIdentifier...) -> UIFont {
		font(byAdding: features)
	}
	
	func featured(withOpenTypeFeature feature: OpenTypeFontFeatureIdentifier) -> UIFont {
		font(byAdding: [feature])
	}
	
	func featured(withOpenTypeFeature openTypeFeatureTag: String) -> UIFont {
		font(byAdding: [.openType(tag: openTypeFeatureTag)])
	}
	
	func featured(withOpenTypeFeatures openTypeFeatureTags: [String]) -> UIFont {
		font(byAdding: openTypeFeatureTags.map { .openType(tag: $0) })
	}
	
	func featured(withOpenTypeFeatures openTypeFeatureTags: String...) -> UIFont {
		font(byAdding: openTypeFeatureTags.map { .openType(tag: $0) })
	}
	
}
