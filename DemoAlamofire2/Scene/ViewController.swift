//
//  ViewController.swift
//  DemoAlamofire2
//
//  Created by Piesoft on 16/2/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.requestCurrency()
    }


}

