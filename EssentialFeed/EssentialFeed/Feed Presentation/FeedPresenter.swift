//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Liam on 2023/7/19.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        NSLocalizedString(
            "FEED_VIEW_TITLE",
            tableName: "Feed",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the feed view")
    }
}
