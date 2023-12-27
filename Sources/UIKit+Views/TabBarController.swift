//
//  TabBarController.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit

open class TabBarController: UITabBarController {
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false
    }
}
