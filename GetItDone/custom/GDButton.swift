//
//  GDButton.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/16/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import UIKit

class GDButton: UIButton {
    
    var title:String!
    
    init(title: String = "Button text", frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.title = title
        self.phaseTwo()
        
        
    }
    
    //phase two initializer
    func phaseTwo() {
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(.grayZero, for: .normal)
        self.layer.cornerRadius = 20
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont(name: "Raleway-v4020-Regular", size: 16)

        }

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
