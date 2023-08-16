//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Liam on 2023/6/29.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
