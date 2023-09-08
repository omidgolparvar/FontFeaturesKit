//

import Foundation
import CoreText

// MARK: - CursiveConnectionFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var cursiveConnection: Self { Self.init(identifier: kCursiveConnectionType) }
}

public struct CursiveConnectionFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var unconnected: Self { .init(identifier: kUnconnectedSelector) }
    public static var partiallyConnected: Self { .init(identifier: kPartiallyConnectedSelector) }
    public static var cursive: Self { .init(identifier: kCursiveSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func cursiveConnection(_ selector: CursiveConnectionFontFeatureSelectors) -> Self {
        .init(type: .cursiveConnection, selector: selector)
    }
}

