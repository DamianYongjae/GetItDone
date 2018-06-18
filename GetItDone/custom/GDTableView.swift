//
//  GDTableView.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/17/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import UIKit

class GDTableView:UITableView {
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        checkIfAutoLayout()
        
        backgroundColor = .clear
        separatorStyle = .none
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
