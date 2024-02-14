// Generated using Sourcery 1.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable all

import Foundation
import UIKit
import SwiftUI

import Combine
import SparkTheming
@testable import SparkTag





public final class TagGetColorsUseCaseableGeneratedMock: SparkTag.TagGetColorsUseCaseable, ResetGeneratedMock {


    // MARK: - Initialization

    public init() {}

    // MARK: - execute

    public var executeWithThemeAndIntentAndVariantCallsCount = 0
    public var executeWithThemeAndIntentAndVariantCalled: Bool {
        return executeWithThemeAndIntentAndVariantCallsCount > 0
    }
    public var executeWithThemeAndIntentAndVariantReceivedArguments: (theme: Theme, intent: TagIntent, variant: TagVariant)?
    public var executeWithThemeAndIntentAndVariantReceivedInvocations: [(theme: Theme, intent: TagIntent, variant: TagVariant)] = []
    public var executeWithThemeAndIntentAndVariantReturnValue: TagColors!
    public var _executeWithThemeAndIntentAndVariant: ((Theme, TagIntent, TagVariant) -> TagColors)?
    public func execute(theme: Theme, intent: TagIntent, variant: TagVariant) -> TagColors {
        executeWithThemeAndIntentAndVariantCallsCount += 1
        executeWithThemeAndIntentAndVariantReceivedArguments = (theme: theme, intent: intent, variant: variant)
        executeWithThemeAndIntentAndVariantReceivedInvocations.append((theme: theme, intent: intent, variant: variant))
        return _executeWithThemeAndIntentAndVariant.map({ $0(theme, intent, variant) }) ?? executeWithThemeAndIntentAndVariantReturnValue
    }

    // MARK: Reset 

    public func reset() {
        executeWithThemeAndIntentAndVariantCallsCount = 0
        executeWithThemeAndIntentAndVariantReceivedArguments = nil
        executeWithThemeAndIntentAndVariantReceivedInvocations = []
    }
}

public final class TagGetContentColorsUseCaseableGeneratedMock: SparkTag.TagGetContentColorsUseCaseable, ResetGeneratedMock {


    // MARK: - Initialization

    public init() {}

    // MARK: - execute

    public var executeWithIntentAndColorsCallsCount = 0
    public var executeWithIntentAndColorsCalled: Bool {
        return executeWithIntentAndColorsCallsCount > 0
    }
    public var executeWithIntentAndColorsReceivedArguments: (intent: TagIntent, colors: Colors)?
    public var executeWithIntentAndColorsReceivedInvocations: [(intent: TagIntent, colors: Colors)] = []
    public var executeWithIntentAndColorsReturnValue: TagContentColors!
    public var _executeWithIntentAndColors: ((TagIntent, Colors) -> TagContentColors)?
    public func execute(intent: TagIntent, colors: Colors) -> TagContentColors {
        executeWithIntentAndColorsCallsCount += 1
        executeWithIntentAndColorsReceivedArguments = (intent: intent, colors: colors)
        executeWithIntentAndColorsReceivedInvocations.append((intent: intent, colors: colors))
        return _executeWithIntentAndColors.map({ $0(intent, colors) }) ?? executeWithIntentAndColorsReturnValue
    }

    // MARK: Reset 

    public func reset() {
        executeWithIntentAndColorsCallsCount = 0
        executeWithIntentAndColorsReceivedArguments = nil
        executeWithIntentAndColorsReceivedInvocations = []
    }
}

// MARK: - Reset

public protocol ResetGeneratedMock {
    func reset()
}
