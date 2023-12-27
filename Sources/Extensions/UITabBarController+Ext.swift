//
//  UITabBarController+Ext.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit

public extension UITabBarController {
    func hideTabbar() {
        if tabBar.isHidden {
            return
        }
        tabBar.isHidden = true
        var frame = view.frame
        frame.size.height += tabBar.frame.size.height
        view.frame = frame
    }
    
    func showTabBar() {
        if !tabBar.isHidden {
            return
        }
        var frame = view.frame
        frame.size.height -= tabBar.frame.size.height
        view.frame = frame
        tabBar.isHidden = false
    }
}
