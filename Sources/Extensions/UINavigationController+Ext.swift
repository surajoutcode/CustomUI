//
//  UINavigationController+Ext.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit

public extension UINavigationController {
    func viewController<T: UIViewController>(of type: T.Type) -> T? {
        return (viewControllers.first(where: { $0 is T }) as? T)
    }
    
    func visibleViewController<T: UIViewController>(of type: T.Type) -> T? {
        return visibleViewController as? T
    }
}
