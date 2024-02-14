//
//  TagColorsTests.swift
//  SparkCoreTests
//
//  Created by michael.zimmermann on 24.07.23.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import XCTest
@testable import SparkTag
@testable import SparkTheme
@testable import SparkTheming
@_spi(SI_SPI) @testable import SparkInternal
@_spi(SI_SPI) @testable import SparkInternalTesting
@_spi(SI_SPI) @testable import SparkInternalSnapshotTesting

final class TagColorsTests: XCTestCase {

    func testEqual() {
        let colors = SparkTheme.shared.colors

        let colors1 = TagColors(
            backgroundColor: colors.base.background,
            borderColor: colors.main.main,
            foregroundColor: colors.feedback.info)

        let colors2 = TagColors(
            backgroundColor: colors.base.background,
            borderColor: colors.main.main,
            foregroundColor: colors.feedback.info)

        XCTAssertEqual(colors1, colors2)
    }

    func testNotEqual() {
        let colors = SparkTheme.shared.colors

        let colors1 = TagColors(
            backgroundColor: colors.base.background,
            borderColor: colors.main.main,
            foregroundColor: colors.feedback.info)

        let colors2 = TagColors(
            backgroundColor: colors.base.background,
            borderColor: colors.main.main,
            foregroundColor: colors.feedback.alert)

        XCTAssertNotEqual(colors1, colors2)
    }
}
