//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Liam on 2023/8/7.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
