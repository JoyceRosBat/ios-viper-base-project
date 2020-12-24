//
//  BaseRouter.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 9/12/20.
//

import UIKit

class BaseRouter: BaseRouterProtocol {
    var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        //Set root view:
        let view = UIStoryboard.rootView()
        
        //Instantiate presenter, interactor and router
        let presenter = BasePresenter()
        let interactor = BaseInteractor()
        let router = BaseRouter()
        
        let navigationController = UINavigationController(rootViewController: view)
        
        //Set Presenter on the view
        view.presenter = presenter
        
        //Set view, interactor and router on the Presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        //Set the outout on the Interactor
        interactor.output = presenter
        
        //Set the viewController in the Router
        router.viewController = view
        
        return navigationController
    }
    
    func presentOtherView(forData data: BaseData) {
        //Prepare to present another view
        //Example:
        //let someOtherView = SomeOtherViewRouter.assembleModule(data)
        //viewController?.navigationController?.pushViewController(someOtherView, animated: true)
    }
}
