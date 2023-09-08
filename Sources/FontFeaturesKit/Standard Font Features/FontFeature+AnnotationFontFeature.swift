//

import Foundation
import CoreText

// MARK: - AnnotationFontFeature

public extension FontFeatureTypeIdentifier where Self == IntegerBasedFontFeatureTypeIdentifier {
    static var annotation: Self { Self.init(identifier: kAnnotationType) }
}

public struct AnnotationFontFeatureSelectors: FontFeatureSelectorIdentifier {
    public let identifier: Int
    
    public init(identifier: Int) {
        self.identifier = identifier
    }
    
    public static var noAnnotation: Self { .init(identifier: kNoAnnotationSelector) }
    public static var boxAnnotation: Self { .init(identifier: kBoxAnnotationSelector) }
    public static var roundedBoxAnnotation: Self { .init(identifier: kRoundedBoxAnnotationSelector) }
    public static var circleAnnotation: Self { .init(identifier: kCircleAnnotationSelector) }
    public static var invertedCircleAnnotation: Self { .init(identifier: kInvertedCircleAnnotationSelector) }
    public static var parenthesisAnnotation: Self { .init(identifier: kParenthesisAnnotationSelector) }
    public static var periodAnnotation: Self { .init(identifier: kPeriodAnnotationSelector) }
    public static var romanNumeralAnnotation: Self { .init(identifier: kRomanNumeralAnnotationSelector) }
    public static var diamondAnnotation: Self { .init(identifier: kDiamondAnnotationSelector) }
    public static var invertedBoxAnnotation: Self { .init(identifier: kInvertedBoxAnnotationSelector) }
    public static var invertedRoundedBoxAnnotation: Self { .init(identifier: kInvertedRoundedBoxAnnotationSelector) }
}

public extension FontFeatureIdentifier where Self == StandardFontFeatureIdentifier {
    static func annotation(_ selector: AnnotationFontFeatureSelectors) -> Self {
        .init(type: .annotation, selector: selector)
    }
}

