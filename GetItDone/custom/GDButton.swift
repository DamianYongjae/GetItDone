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
    var type:ButtonOptions!
    var radius:CGFloat!
    
    init(title: String = "Button text", frame: CGRect = .zero, type:ButtonOptions = .roundedText, radius:CGFloat = 20) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }

        self.title = title
        self.type = type
        self.radius = radius
        self.phaseTwo()
        
    }
    
    func phaseTwo(){
        
        self.setTitleColor(.grayZero, for: .normal)
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont(name: "Raleway-v4020-Regular", size: 16)
        }
        switch self.type {
        case .roundedText:
            self.roundedText()
        case .squareIcon:
            self.squareIcon()
        default:
            break;
        }
    }
    
    //phase two initializer
    func roundedText() {
        self.setTitle(self.title, for: .normal)
        self.backgroundColor = .white
        self.layer.cornerRadius = self.radius
    }
    
    func squareIcon(){
        //this is where we will set the custom icon
        self.setImage(UIImage(named:"add-icon"), for: .normal)
        self.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
