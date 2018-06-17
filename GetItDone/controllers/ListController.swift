//
//  ListController.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/16/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import UIKit

class ListController: UIViewController, GDHeaderDelegate {
    
    let header = GDHeaderView(title: "Stuff to get done", subTitle: "4 left")
    
    // since we inherit GDHeaderDelegate, we should implement the addItem function in GDHeaderDelegate
    func addItem(){
        print("trying to add item from header")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        header.delegate = self
    }
}


