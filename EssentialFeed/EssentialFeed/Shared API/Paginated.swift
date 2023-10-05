//
//  Paginated.swift
//  EssentialFeed
//
//  Created by Liam on 2023/10/5.
//

import Foundation

public struct Paginated<Item> {
    public typealias LoadMoreCompletion = (Result<Self, Error>) -> Void
    
    public let items: [Item]
    public let canLoadMore: ((@escaping LoadMoreCompletion) -> Void)?
    
    public init(items: [Item], canLoadMore: ((@escaping Paginated<Item>.LoadMoreCompletion) -> Void)? = nil) {
        self.items = items
        self.canLoadMore = canLoadMore
    }
}
