//
//  UIStoryboard+Ext.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 10/12/20.
//

import UIKit

extension UIStoryboard {
    static func rootView() -> BaseView {
        let storyBoard = UIStoryboard(name: "Base", bundle: nil)
        return storyBoard.instantiateViewController(withIdentifier: "BaseView") as! BaseView
    }
}
