//

import Foundation
import CoreText

// MARK: - CharacterShapeFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var characterShape: Self { Self.init(identifier: kCharacterShapeType) }
}

public struct CharacterShapeFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var traditionalCharacters: Self { .init(identifier: kTraditionalCharactersSelector) }
    public static var simplifiedCharacters: Self { .init(identifier: kSimplifiedCharactersSelector) }
    public static var jis1978CharactersSelector: Self { .init(identifier: kJIS1978CharactersSelector) }
    public static var jis1983CharactersSelector: Self { .init(identifier: kJIS1983CharactersSelector) }
    public static var jis1990CharactersSelector: Self { .init(identifier: kJIS1990CharactersSelector) }
    public static var traditionalAlt1: Self { .init(identifier: kTraditionalAltOneSelector) }
    public static var traditionalAlt2: Self { .init(identifier: kTraditionalAltTwoSelector) }
    public static var traditionalAlt3: Self { .init(identifier: kTraditionalAltThreeSelector) }
    public static var traditionalAlt4: Self { .init(identifier: kTraditionalAltFourSelector) }
    public static var traditionalAlt5: Self { .init(identifier: kTraditionalAltFiveSelector) }
    public static var expertCharacters: Self { .init(identifier: kExpertCharactersSelector) }
    public static var jis2004CharactersSelector: Self { .init(identifier: kJIS2004CharactersSelector) }
    public static var hojoCharacters: Self { .init(identifier: kHojoCharactersSelector) }
    public static var nLCCharacters: Self { .init(identifier: kNLCCharactersSelector) }
    public static var traditionalNamesCharacters: Self { .init(identifier: kTraditionalNamesCharactersSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func characterShape(_ selector: CharacterShapeFontFeatureSelectors) -> Self {
        .init(type: .characterShape, selector: selector)
    }
}

