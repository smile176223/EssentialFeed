//
//  ImageCommentPresenter.swift
//  EssentialFeed
//
//  Created by Liam on 2023/8/28.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        NSLocalizedString(
            "IMAGE_COMMENTS_VIEW_TITLE",
            tableName: "ImageComments",
            bundle: Bundle(for: ImageCommentsPresenter.self),
            comment: "Title for the feed view")
    }
}
