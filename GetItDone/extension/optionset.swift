//
//  optionset.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/16/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import Foundation

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText    = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon  = ButtonOptions(rawValue: 1 << 1)

 
}
