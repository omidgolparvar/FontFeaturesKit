//

import Foundation
import UIKit

// MARK: - Print Font Names

public extension UIFont {
	
	static func printFontNames() {
		print("# All Font Names")
		familyNames.forEach(UIFont.printFontNames(forFamilyName:))
	}
	
	static func printFontNames(forFamilyName familyName: String) {
		guard familyNames.contains(familyName) else {
			print("UIFont.\(#function):", "Invalid family name:", familyName)
			return
		}
		
		print("- \(familyName)")
		fontNames(forFamilyName: familyName).forEach { font in
			print("  - \(font)")
		}
	}
	
}

//MARK: - List Font Features

public extension UIFont {
	
	typealias FontFeaturesDictionary = [CFString: Any]
	
	private func ctFontFeatures(_ function: StaticString = #function) -> [FontFeaturesDictionary]? {
		guard let fontFeatures = CTFontCopyFeatures(self) as? [FontFeaturesDictionary] else {
			print("UIFont.\(function):", "Could not copy font features for \(familyName):\(fontName)")
			return nil
		}
		return fontFeatures
	}
	
	internal func printRawFeatures() {
		guard let fontFeatures = ctFontFeatures() else { return }
		
		print("/*** Font-Features for \(familyName)-\(fontName):\n")
		
		for dictionary in fontFeatures {
			let feature = RawFeature(dictionary: dictionary)
			print(feature)
			print("")
		}
		
		print("***/")
	}
	
	func printRawFeaturesDictionary() {
		guard let fontFeatures = ctFontFeatures() else { return }
		
		print("/*** Font-Features Dictionary for \(familyName)-\(fontName):\n")
		
		for dictionary in fontFeatures {
			print(dictionary)
			print("")
		}
		
		print("***/")
	}
	
}
