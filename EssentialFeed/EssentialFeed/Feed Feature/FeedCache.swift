//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Liam on 2023/8/7.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping ((Result) -> Void))
}
