//
//  ViewController.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/13/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

    let bg:UIView = {
       let view = GDGradient()
        
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 20
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }

}

