//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Liam on 2023/7/27.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
