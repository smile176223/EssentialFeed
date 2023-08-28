//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Liam on 2023/7/19.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
