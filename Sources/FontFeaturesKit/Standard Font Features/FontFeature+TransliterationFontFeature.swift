//

import Foundation
import CoreText

// MARK: - TransliterationFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var transliteration: Self { Self.init(identifier: kTransliterationType) }
}

public struct TransliterationFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var noTransliteration: Self { .init(identifier: kNoTransliterationSelector) }
    public static var hanjaToHangul: Self { .init(identifier: kHanjaToHangulSelector) }
    public static var hiraganaToKatakana: Self { .init(identifier: kHiraganaToKatakanaSelector) }
    public static var katakanaToHiragana: Self { .init(identifier: kKatakanaToHiraganaSelector) }
    public static var kanaToRomanization: Self { .init(identifier: kKanaToRomanizationSelector) }
    public static var romanizationToHiragana: Self { .init(identifier: kRomanizationToHiraganaSelector) }
    public static var romanizationToKatakana: Self { .init(identifier: kRomanizationToKatakanaSelector) }
    public static var hanjaToHangulAlt1: Self { .init(identifier: kHanjaToHangulAltOneSelector) }
    public static var hanjaToHangulAlt2: Self { .init(identifier: kHanjaToHangulAltTwoSelector) }
    public static var hanjaToHangulAlt3: Self { .init(identifier: kHanjaToHangulAltThreeSelector) }
}

public extension FontFeatureDescriptor where Self == StandardFontFeatureDescriptor {
    static func transliteration(_ selector: TransliterationFontFeatureSelectors) -> Self {
        .init(type: .transliteration, selector: selector)
    }
}

