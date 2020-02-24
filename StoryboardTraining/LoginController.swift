//
//  ViewController.swift
//  StoryboardTraining
//
//  Created by Nghia Tran on 2/20/20.
//  Copyright © 2020 Nghia Tran. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    
    @IBOutlet weak var UserNameTxtField: UITextField!
    
    var userName=""
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
    
//    @IBAction func showRegisterController(_ sender: Any) {
//        NSLog("showRegisterController")
////        let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
////        self.navigationController?.pushViewController(registerViewController, animated: true)
////        self.present(registerViewController, animated: true)
//    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        self.userName = UserNameTxtField.text ?? ""
        performSegue(withIdentifier: "loginSuccess", sender: self)
    }
    
    
    @IBAction func showRegisterHere(_ sender: Any) {
        print("showRegisterController")
        let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        registerViewController.modalPresentationStyle = .fullScreen
        //self.present(registerViewController, animated:true)
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var viewController = segue.destination as? MainController
        viewController?.userName = self.userName
    }
    
}

