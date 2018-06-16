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
    
    var colors:[CGColor] = [
        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
        UIColor.init(red: 58, green: 123, blue: 213).cgColor
    ]
    
    var hexColors:[CGColor] = [
        UIColor.init(rgb:0x64E4FF).cgColor,
        UIColor.init(rgb:0x3A7BD5).cgColor
    ]
    
    var useColor:[UIColor] = [
        .blueZero, .blueOne
    ]
    
    var varColors:[CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    ]
    
    
    //3A7BD5
    //64E4FF
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let layer = self.layer as? CAGradientLayer{
            layer.colors = self.varColors
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
