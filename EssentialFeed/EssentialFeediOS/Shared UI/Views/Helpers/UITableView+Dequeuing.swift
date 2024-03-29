//
//  UITableView+Dequeuing.swift
//  EssentialFeediOS
//
//  Created by Liam on 2023/7/19.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
