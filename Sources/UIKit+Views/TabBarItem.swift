//
//  TabBarItem.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit

@IBDesignable open class TabBarItem: UITabBarItem {
    
    @IBInspectable public var scaledImage: UIImage? = nil {
        didSet {
            image = scaledImage?.compress(compressionQuality: 1.0, newSize: CGSize(width: 25, height: 25))
        }
    }
    
}
