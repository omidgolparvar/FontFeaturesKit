//

import Foundation
import UIKit

public extension UIFont {
	
	struct RawFeature: CustomStringConvertible {
		public let rawDictionary: FontFeaturesDictionary
		public let name: String
		public let identifier: Int?
		public let selectors: [Selector]
		public let openTypeTag: String?
		public let isExclusive: Bool?
		
		init(dictionary: FontFeaturesDictionary) {
			self.rawDictionary = dictionary
			self.name = String(describing: dictionary[kCTFontFeatureTypeNameKey] ?? "-")
			self.identifier = dictionary[kCTFontFeatureTypeIdentifierKey] as? Int
			self.selectors = dictionary[kCTFontFeatureTypeSelectorsKey]
				.flatMap({ $0 as? NSArray })
				.flatMap({ array in
					array
						.compactMap({ $0 as? [CFString: Any] })
						.compactMap({ Selector(dictionary: $0) })
				}) ?? []
			self.openTypeTag = dictionary[kCTFontOpenTypeFeatureTag] as? String
			self.isExclusive = dictionary[kCTFontFeatureTypeExclusiveKey] as? Bool
		}
		
		public var description: String {
			let typeNameString = "name: \"\(name)\""
			let typeIdentifierString = "identifier: \(identifier.flatMap { "\($0)" } ?? "-")"
			let typeSelectorsString = "selectors: [\n" + selectors
				.map({ $0
					.description
					.components(separatedBy: .newlines)
					.map({ "    \($0)"})
					.joined(separator: "\n")
				})
				.joined(separator: "\n") + "\n  ]"
			let openTypeTagString = "openTypeTag: \(openTypeTag ?? "-")"
			let isExclusiveString = "isExclusive: \(isExclusive.flatMap { "\($0)" } ?? "-")"
			
			let properties = [
				typeNameString,
				typeIdentifierString,
				typeSelectorsString,
				openTypeTagString,
				isExclusiveString
			].map { "  \($0)" }.joined(separator: "\n")
			
			return """
				RawFeature {
				\(properties)
				}
				"""
		}
	}
}
