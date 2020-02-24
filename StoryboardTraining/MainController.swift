//
//  MainController.swift
//  StoryboardTraining
//
//  Created by Nghia Tran on 2/21/20.
//  Copyright © 2020 Nghia Tran. All rights reserved.
//

import UIKit

class MainController:UIViewController{
    @IBOutlet weak var TxtUserName: UILabel!
    
    var userName=""
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TxtUserName.text = "Hello user: " + userName
    }
}
