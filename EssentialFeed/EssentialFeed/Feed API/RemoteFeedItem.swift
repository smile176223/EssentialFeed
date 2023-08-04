//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Liam on 2023/6/28.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
