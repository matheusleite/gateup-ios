//
//  DesignManager.swift
//  Shake
//
//  Created by Matheus Leite on 16/02/16.
//  Copyright © 2016 Matheus Leite. All rights reserved.
//

import UIKit

class DesignManager: NSObject {

    let white = UIColor(hexString: "#FFFFFF")
    let darkBlack = UIColor(hexString: "#000000")
    let lightBlack = UIColor(hexString: "#242424")
    
    override init() {
        
        var fontAttributes = [String : AnyObject]()
        let font = UIFont(name: "TitilliumWeb-SemiBold", size: 19)
        fontAttributes = [NSFontAttributeName : font!, NSForegroundColorAttributeName : white]
        
        //navBar
        //UINavigationBar.appearance().setBackgroundImage(UIImage(named: "navBar_bg"), for: UIBarMetrics.default)
        UINavigationBar.appearance().backgroundColor = darkBlack
        UINavigationBar.appearance().tintColor = darkBlack
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = fontAttributes
        //UINavigationBar.appearance().tintColor = white
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().tintColor = white
        UIBarButtonItem.appearance().setTitleTextAttributes(fontAttributes, for: UIControlState.normal)
        UIApplication.shared.statusBarStyle = .lightContent
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: NSCharacterSet.alphanumerics.inverted)
        //let hex = hexString.stringByTrimmingCharactersInSet(NSCharacterSet.alphanumericCharacterSet().invertedSet)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.characters.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

