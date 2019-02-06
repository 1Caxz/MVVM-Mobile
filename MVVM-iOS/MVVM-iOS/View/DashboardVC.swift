//
//  ViewController.swift
//  MVVM-iOS
//
//  Created by Saiful I. Wicaksana on 04/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController {
    
    @IBOutlet weak var lblTest: UILabel!
    @IBOutlet weak var btnTest: UIButton!
    @IBOutlet weak var inputText: UITextField!
    
    var binder: DashboardBinder?
    var viewModel: DashboardVM?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.binder = DashboardBinder(inputText: inputText, btnTest: btnTest, lblTest: lblTest)
        self.viewModel = DashboardVM(binder: self.binder!)
        
        // Try to set nil the binder object.
//        self.binder = nil
        
        // Call method with weak binder variable.
        self.viewModel!.Main()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.binder = nil
        self.viewModel = nil
    }
    
    @IBAction func onTouchButtonTest(_ sender: Any) {
        self.binder!.onButtonClick()
    }
}
