//
//  StackView.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//
import UIKit

open class StackView: UIStackView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        makeUI()
    }

    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        makeUI()
    }
    
    open func makeUI() {
        spacing = 0
        axis = .vertical
        distribution = .fill
        
        updateUI()
    }
    
    open func updateUI() {
        setNeedsDisplay()
    }
}
