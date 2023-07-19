//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Liam on 2023/7/12.
//

import Foundation

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
