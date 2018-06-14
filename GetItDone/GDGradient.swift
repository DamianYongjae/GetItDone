//
//  GDGradient.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/13/18.
//  Copyright © 2018 YJ. All rights reserved.
//

// class for gradient background!!


import UIKit

class GDGradient:UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let layer = self.layer as? CAGradientLayer{
            layer.colors = [UIColor.cyan.cgColor, UIColor.gray.cgColor]
            layer.locations = [0.0,1.2]
        }
        
        
        
    }
    
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self        // tell this class is using gradient
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
