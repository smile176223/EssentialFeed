//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Liam on 2023/7/20.
//

import Foundation

public final class FeedImagePresenter{
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
