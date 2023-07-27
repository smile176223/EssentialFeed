//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Liam on 2023/7/27.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
