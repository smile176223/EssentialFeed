//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Liam on 2023/7/11.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
