//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Liam on 2023/10/11.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)

    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id.uuidString)/comments")
        }
    }
}
