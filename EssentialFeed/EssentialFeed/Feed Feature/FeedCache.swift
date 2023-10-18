//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Liam on 2023/8/7.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
