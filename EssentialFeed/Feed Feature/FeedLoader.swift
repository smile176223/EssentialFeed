//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Liam on 2023/3/29.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error> 

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
