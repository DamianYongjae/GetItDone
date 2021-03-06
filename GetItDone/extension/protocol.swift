//
//  protocol.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/17/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import Foundation

protocol GDHeaderDelegate {
    func openAddItemPopup()
}

protocol GDNewItemDelegate {
    func addItemToList(text:String)
}

protocol GDListCellDelegate {
    func toggleToDo(id: Int, status:Bool)
}
