//
//  CollectionViewCell.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit

open class CollectionViewCell: UICollectionViewCell, ThemeConfigurable, Localizable {
    
    public lazy var containerView: View = {
        let view = View()
        view.backgroundColor = .clear
        self.contentView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: self.contentView.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: self.contentView.rightAnchor).isActive = true
        return view
    }()
    
    private var isContainerViewSet: Bool = false
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        makeUI()
        
        self.registerForThemeEvent()
        languageChanged()
        themeChanged()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.registerForLocalizeEvent()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(LCLLanguageChangeNotification), object: nil)
        
        NotificationCenter.default.removeObserver(self, name: .themeToggled, object: nil)
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        
        languageChanged()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        
        if containerView.frame != .zero && isContainerViewSet == false {
            isContainerViewSet = true
            themeChanged()
        }
    }
    
    open func makeUI() {
        self.layer.masksToBounds = true
        backgroundColor = .clear
        
        updateUI()
    }
    
    open func updateUI() {
        setNeedsDisplay()
    }
    
    open func applyTheme(_ theme: Theme) {
        
    }
    
    open func languageChanged() {
        
    }
}
