//
//  BaseProtocol.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 9/12/20.
//

import UIKit

protocol BaseUseCase {
    var output: BaseInteractorOutput! { get set }
    
    //TODO: Add functions and/or variables to use in the Interactor
    //Example:
    func fetchBaseData()
}

protocol BaseInteractorOutput {
    //TODO: Add functions to send data to the Presenter through the Interactor's Output
    //Example:
    func baseDataFetched(_ data: [BaseData])
    func baseDataFailed()
}

protocol BaseViewProtocol {
    var presenter: BasePresenterProtocol! { get set }
    
    //TODO: Add functions to interact with the view
    //Example:
    func showNoContent()
    func showBaseData(_ data: [BaseData])
}

protocol BasePresenterProtocol {
    var view: BaseViewProtocol? { get set }
    var interactor: BaseUseCase! { get set }
    var router: BaseRouterProtocol! { get set }
    
    func viewDidLoad()
    
    //TODO: Add functions to comunicate with the presenter
    //Example:
    func doSomethingWithData(_ data: BaseData)
}

protocol BaseRouterProtocol {
    var viewController: UIViewController? { get set }
    static func assembleModule() -> UIViewController
    
    //TODO: Add functions to navigate:
    //Example:
    func presentOtherView(forData data: BaseData)
}
