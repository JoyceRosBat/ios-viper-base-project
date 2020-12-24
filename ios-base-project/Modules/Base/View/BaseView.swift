//
//  BaseView.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 9/12/20.
//

import UIKit

class BaseView: UIViewController {

    var presenter: BasePresenterProtocol!
    var data: [BaseData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Set the view and do something. Example: setupView()
        presenter.viewDidLoad()
    }
}

extension BaseView: BaseViewProtocol {
    func showNoContent() {
        //TODO: Do Whatever when there is no content
    }
    
    func showBaseData(_ data: [BaseData]) {
        //TODO: Set data and/or do something with it
        self.data = data
    }
    
    
}
