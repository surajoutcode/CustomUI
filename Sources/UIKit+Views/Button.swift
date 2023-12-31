//
//  Button.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit

open class Button: UIButton {
    
    public var tapAction: ((_ sender: Button) -> ())?
    
    open override var isEnabled: Bool {
        didSet {
            if isEnabled {
                self.alpha = 1.0
            } else {
                self.alpha = 0.32
            }
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        makeUI()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        makeUI()
    }
    
    open func makeUI() {
        
        layer.masksToBounds = false
        self.clipsToBounds = true
        titleLabel?.lineBreakMode = .byWordWrapping
        
        
        self.titleLabel?.font = UIFont.smallLight
        
        updateUI()
        
        self.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    open func applyTheme(theme: Theme, type: ColorThemeType) {
        switch type {
        case .primary:
            self.backgroundColor = theme.primary
            self.setTitleColor(theme.background, for: .normal)
            self.setTitleColor(theme.background, for: .disabled)
        case .secondary:
            self.backgroundColor = theme.secondary
            self.setTitleColor(theme.background, for: .normal)
            break
        case .tertiary:
            self.backgroundColor = theme.clear
            self.setTitleColor(theme.text, for: .normal)
        }
    }
    
    @objc func buttonAction() {
        tapAction?(self)
    }
    
    open func updateUI() {
        setNeedsDisplay()
    }
    
}
