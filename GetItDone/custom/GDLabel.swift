//
//  GDLabel.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/16/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import UIKit

class GDLabel:UILabel {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title:String = "default msg", color:UIColor = .white, size:CGFloat = 16 ,frame:CGRect = .zero, textAlign:NSTextAlignment = .left){
        super.init(frame: .zero)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-v4020-Regular", size: size)
        self.textAlignment = textAlign
    }
}
