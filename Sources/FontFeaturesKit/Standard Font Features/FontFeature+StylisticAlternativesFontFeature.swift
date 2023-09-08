//

import Foundation
import CoreText

// MARK: - StylisticAlternativesFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var stylisticAlternatives: Self { Self.init(identifier: kStylisticAlternativesType) }
}

public struct StylisticAlternativesFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var noStylisticAlternates: Self { .init(identifier: kNoStylisticAlternatesSelector) }
    public static func stylisticAlt01(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltOneOnSelector : kStylisticAltOneOffSelector)
    }
    public static func stylisticAlt02(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltTwoOnSelector : kStylisticAltTwoOffSelector)
    }
    public static func stylisticAlt03(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltThreeOnSelector : kStylisticAltThreeOffSelector)
    }
    public static func stylisticAlt04(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltFourOnSelector : kStylisticAltFourOffSelector)
    }
    public static func stylisticAlt05(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltFiveOnSelector : kStylisticAltFiveOffSelector)
    }
    public static func stylisticAlt06(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltSixOnSelector : kStylisticAltSixOffSelector)
    }
    public static func stylisticAlt07(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltSevenOnSelector : kStylisticAltSevenOffSelector)
    }
    public static func stylisticAlt08(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltEightOnSelector : kStylisticAltEightOffSelector)
    }
    public static func stylisticAlt09(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltNineOnSelector : kStylisticAltNineOffSelector)
    }
    public static func stylisticAlt10(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltTenOnSelector : kStylisticAltTenOffSelector)
    }
    public static func stylisticAlt11(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltElevenOnSelector : kStylisticAltElevenOffSelector)
    }
    public static func stylisticAlt12(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltTwelveOnSelector : kStylisticAltTwelveOffSelector)
    }
    public static func stylisticAlt13(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltThirteenOnSelector : kStylisticAltThirteenOffSelector)
    }
    public static func stylisticAlt14(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltFourteenOnSelector : kStylisticAltFourteenOffSelector)
    }
    public static func stylisticAlt15(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltFifteenOnSelector : kStylisticAltFifteenOffSelector)
    }
    public static func stylisticAlt16(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltSixteenOnSelector : kStylisticAltSixteenOffSelector)
    }
    public static func stylisticAlt17(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltSeventeenOnSelector : kStylisticAltSeventeenOffSelector)
    }
    public static func stylisticAlt18(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltEighteenOnSelector : kStylisticAltEighteenOffSelector)
    }
    public static func stylisticAlt19(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltNineteenOnSelector : kStylisticAltNineteenOffSelector)
    }
    public static func stylisticAlt20(isOn: Bool) -> Self {
        .init(identifier: isOn ? kStylisticAltTwentyOnSelector : kStylisticAltTwentyOffSelector)
    }
    
    public static var stylisticAlt01: Self { stylisticAlt01(isOn: true) }
    public static var ss01: Self { stylisticAlt01(isOn: true) }
    public static var stylisticAlt02: Self { stylisticAlt02(isOn: true) }
    public static var ss02: Self { stylisticAlt02(isOn: true) }
    public static var stylisticAlt03: Self { stylisticAlt03(isOn: true) }
    public static var ss03: Self { stylisticAlt03(isOn: true) }
    public static var stylisticAlt04: Self { stylisticAlt04(isOn: true) }
    public static var ss04: Self { stylisticAlt04(isOn: true) }
    public static var stylisticAlt05: Self { stylisticAlt05(isOn: true) }
    public static var ss05: Self { stylisticAlt05(isOn: true) }
    public static var stylisticAlt06: Self { stylisticAlt06(isOn: true) }
    public static var ss06: Self { stylisticAlt06(isOn: true) }
    public static var stylisticAlt07: Self { stylisticAlt07(isOn: true) }
    public static var ss07: Self { stylisticAlt07(isOn: true) }
    public static var stylisticAlt08: Self { stylisticAlt08(isOn: true) }
    public static var ss08: Self { stylisticAlt08(isOn: true) }
    public static var stylisticAlt09: Self { stylisticAlt09(isOn: true) }
    public static var ss09: Self { stylisticAlt09(isOn: true) }
    public static var stylisticAlt10: Self { stylisticAlt10(isOn: true) }
    public static var ss10: Self { stylisticAlt10(isOn: true) }
    public static var stylisticAlt11: Self { stylisticAlt11(isOn: true) }
    public static var ss11: Self { stylisticAlt11(isOn: true) }
    public static var stylisticAlt12: Self { stylisticAlt12(isOn: true) }
    public static var ss12: Self { stylisticAlt12(isOn: true) }
    public static var stylisticAlt13: Self { stylisticAlt13(isOn: true) }
    public static var ss13: Self { stylisticAlt13(isOn: true) }
    public static var stylisticAlt14: Self { stylisticAlt14(isOn: true) }
    public static var ss14: Self { stylisticAlt14(isOn: true) }
    public static var stylisticAlt15: Self { stylisticAlt15(isOn: true) }
    public static var ss15: Self { stylisticAlt15(isOn: true) }
    public static var stylisticAlt16: Self { stylisticAlt16(isOn: true) }
    public static var ss16: Self { stylisticAlt16(isOn: true) }
    public static var stylisticAlt17: Self { stylisticAlt17(isOn: true) }
    public static var ss17: Self { stylisticAlt17(isOn: true) }
    public static var stylisticAlt18: Self { stylisticAlt18(isOn: true) }
    public static var ss18: Self { stylisticAlt18(isOn: true) }
    public static var stylisticAlt19: Self { stylisticAlt19(isOn: true) }
    public static var ss19: Self { stylisticAlt19(isOn: true) }
    public static var stylisticAlt20: Self { stylisticAlt20(isOn: true) }
    public static var ss20: Self { stylisticAlt20(isOn: true) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func stylisticAlternatives(_ selector: StylisticAlternativesFontFeatureSelectors) -> Self {
        .init(type: .stylisticAlternatives, selector: selector)
    }
}

