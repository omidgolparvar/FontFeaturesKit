//

import Foundation
import UIKit

public typealias StandardFontFeatureTypeIdentifier = IntegerBasedFontFeatureTypeIdentifier

public struct IntegerBasedFontFeatureTypeIdentifier:
	FontFeatureTypeIdentifier,
	Hashable,
	RawRepresentable,
	ExpressibleByIntegerLiteral {
	
	public typealias RawValue = Int
	public typealias IntegerLiteralType = Int
	
	public let rawValue: Int
	
	public var identifier: Any { rawValue }
	
	public init(rawValue: Int) {
		self.rawValue = rawValue
	}
	
	public init(integerLiteral value: Int) {
		self.init(rawValue: value)
	}
	
	public init(identifier: Int) {
		self.init(rawValue: identifier)
	}
}
