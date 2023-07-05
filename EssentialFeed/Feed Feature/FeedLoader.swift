//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Liam on 2023/3/29.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
