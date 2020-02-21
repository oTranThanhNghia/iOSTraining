//
//  ViewController.swift
//  StoryboardTraining
//
//  Created by Nghia Tran on 2/20/20.
//  Copyright © 2020 Nghia Tran. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear animated= \(animated)")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear animated= \(animated)")
    }
    
    override func didReceiveMemoryWarning() {
        print("didReceiveMemoryWarning")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear animated= \(animated)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear animated= \(animated)")
    }

}

