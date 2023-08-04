//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeedTests
//
//  Created by Liam on 2023/7/25.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
