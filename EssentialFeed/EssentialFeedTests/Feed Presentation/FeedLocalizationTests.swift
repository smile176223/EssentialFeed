//
//  FeedLocalizationTests.swift
//  EssentialFeediOSTests
//
//  Created by Liam on 2023/7/17.
//

import XCTest
import EssentialFeed 

final class FeedLocalizationTests: XCTest {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}

