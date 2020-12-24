//
//  RootRouter.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 9/12/20.
//

import UIKit

class RootRouter: RootRouterProtocol {
    
    //Set BaseView as root view controller
    func presentBaseScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = BaseRouter.assembleModule()
    }
}
