//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Liam on 2023/10/11.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
