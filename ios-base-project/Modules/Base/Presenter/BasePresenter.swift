//
//  BasePresenter.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 9/12/20.
//

import Foundation

class BasePresenter: BasePresenterProtocol {
    var view: BaseViewProtocol?
    var interactor: BaseUseCase!
    var router: BaseRouterProtocol!
    
    //Example: We have a variable that will contain the Base Data. If the list contains some data, we are going to notify the view to show the Base Data. If not, we notify the view to show No Content.
    var data: [BaseData] = [] {
        didSet {
            if data.count > 0 {
                view?.showBaseData(data)
            } else {
                view?.showNoContent()
            }
        }
    }
    
    //Exaple: When the view notifies the Presenter that is ready, the Presenter notifies the Interactor to fetch some data
    func viewDidLoad() {
        interactor.fetchBaseData()
    }
    
    //Exaple: When the view notifies to do something with data, the Presenter can do something. For example, notify the Router to navigate to other view
    func doSomethingWithData(_ data: BaseData) {
        router.presentOtherView(forData: data)
    }
}

extension BasePresenter: BaseInteractorOutput {
    //Example: When we get data from the interactor, the Presenter will set the data variable. And then, the veiew sill be ntify to do something with that data:
    func baseDataFetched(_ data: [BaseData]) {
        self.data = data
    }
    
    //Example: If we can't get data from the interactor, the Presenter will notify the view to show no content.
    func baseDataFailed() {
        self.view?.showNoContent()
    }
}
