//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Liam on 2023/7/20.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
