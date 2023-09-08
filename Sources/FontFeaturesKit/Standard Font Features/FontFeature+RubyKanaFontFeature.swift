//

import Foundation
import CoreText

// MARK: - RubyKanaFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var rubyKana: Self { Self.init(identifier: kRubyKanaType) }
}

public struct RubyKanaFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    @available(*, deprecated, message: "use `rubyKana(isOn: false)` instead instead")
    public static var noRubyKana: Self { .init(identifier: kNoRubyKanaSelector) }
    @available(*, deprecated, message: "use `rubyKana(isOn: true)` instead instead")
    public static var rubyKanaItem: Self { .init(identifier: kRubyKanaSelector) }
    public static func rubyKana(isOn: Bool) -> Self {
        .init(identifier: isOn ? kRubyKanaOnSelector : kRubyKanaOffSelector)
    }
    
    public static var rubyKana: Self { rubyKana(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func rubyKana(_ selector: RubyKanaFontFeatureSelectors) -> Self {
        .init(type: .rubyKana, selector: selector)
    }
}
