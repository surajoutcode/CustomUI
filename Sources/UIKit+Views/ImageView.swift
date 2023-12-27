//
//  ImageView.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit

open class ImageView: UIImageView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        makeUI()
    }
    
    override public init(image: UIImage?) {
        super.init(image: image)
        makeUI()
    }
    
    override public init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
        makeUI()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        makeUI()
    }
    
    open func makeUI() {
        layer.masksToBounds = true
        contentMode = .center
        
        updateUI()
    }
    
    open func updateUI() {
        setNeedsDisplay()
    }
}
