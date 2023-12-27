//
//  ThemeConfigurable.swift
//  CustomUI
//
//  Created by Outcode-1 on 27/12/2023.
//  Copyright © 2023 Inficare. All rights reserved.
//

import UIKit
import ObjectiveC

public protocol ThemeConfigurable: class {
    func applyTheme(_ theme: Theme)
}

//public extension ThemeConfigurable where Self: UIViewController {
//    func registerForThemeEvent() {
//        let defaultCenter = NotificationCenter.default
//
//        var themeEvent: NSObjectProtocol!
//        themeEvent = defaultCenter.addObserver(forName: .themeToggled, object: nil, queue: nil) { [weak self] (notification) in
//            guard let `self` = self else {
//                defaultCenter.removeObserver(themeEvent!)
//                return
//            }
//            self.themeChanged()
//        }
//    }
//
//    func unregisterForThemeEvent() {
//        NotificationCenter.default.removeObserver(self)
//    }
//
//    private func themeChanged() {
//        let currentTheme = ThemeType.currentTheme()
//        applyTheme(currentTheme.associatedObject)
//    }
//}

public extension ThemeConfigurable {
    func registerForThemeEvent() {
        NotificationCenter.default.addObserver(forName: .themeToggled, object: self, queue: nil) { [unowned self] (notification) in
            self.themeChanged()
        }
    }
    
    func unregisterForThemeEvent() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func themeChanged() {
        let currentTheme = ThemeType.currentTheme()
        applyTheme(currentTheme.associatedObject)
    }
}
