//
//  ImageCommentsEndpointTests.swift
//  EssentialFeedTests
//
//  Created by Liam on 2023/10/11.
//

import XCTest
import Foundation
import EssentialFeed

class ImageCommentsEndpointTests: XCTestCase {
    func test_imageComments_endpointURL() {
        let imageID = UUID(uuidString: "2AB2AE66-A4B7-4A16-B374-51BBAC8DB086")!
        let baseURL = URL(string: "http://base-url.com")!

        let received = ImageCommentsEndpoint.get(imageID).url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/image/2AB2AE66-A4B7-4A16-B374-51BBAC8DB086/comments")!

        XCTAssertEqual(received, expected)
    }
}
