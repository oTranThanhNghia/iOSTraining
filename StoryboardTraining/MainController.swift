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
    let squareButton = UIView()
    var userName=""
    
    var minRange: CGFloat = 0.0
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let height = view.frame.size.height
        let width = view.frame.size.width
        NSLog("MainController viewDidLoad view height: \(height) width: \(width)")
        minRange = min(height, width)
        NSLog("MainController viewDidLoad view minRange: \(minRange)")
        TxtUserName.text = "Hello user: " + userName
        setupSquareButton()
        
    }
    
    func setupSquareButton() {
        squareButton.backgroundColor = .red
            
        view.addSubview(squareButton)
            
        squareButton.translatesAutoresizingMaskIntoConstraints = false
            
        squareButton.heightAnchor.constraint(equalToConstant: minRange/2).isActive = true
        squareButton.widthAnchor.constraint(equalToConstant: minRange/2).isActive = true
        squareButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        squareButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            
    }
    
    
}
