//
//  ListController.swift
//  GetItDone
//
//  Created by YONGJAE JO on 6/16/18.
//  Copyright © 2018 YJ. All rights reserved.
//

import UIKit

class ListController: UIViewController, GDHeaderDelegate, GDNewItemDelegate {
    
    // since we inherit GDHeaderDelegate, we should implement the addItem function in GDHeaderDelegate
    func openAddItemPopup(){
        print("trying to add item popup view")
    }
    
    func addItemToList(text:String) {
        print(text)
    }
    
    let header = GDHeaderView(title: "Stuff to get done", subTitle: "4 left")
    let popup = GDNewItemPopup()
    
    var keyboardHeight:CGFloat = 333
    
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification){
        let keyboardSize = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size
        
        self.keyboardHeight = keyboardSize.height
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(popup)
        popup.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        popup.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        popup.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        popup.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        popup.textField.delegate = self
        popup.delegate = self
        
        header.delegate = self
    }
}

extension ListController: UITextFieldDelegate{
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
//  1.       UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.85, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
//            self.popup.transform = CGAffineTransform(translationX: 0, y: -self.keyboardHeight)
//        }, completion: nil)
//  2.      animateView(view: self.popup, transform: CGAffineTransform(translationX: 0, y: -self.keyboardHeight))
        self.popup.animateView(transform: CGAffineTransform(translationX: 0, y: -self.keyboardHeight),duration: 0.60)
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
//        UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 0.85, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
//            self.popup.transform = CGAffineTransform(translationX: 0, y: 0)
//        }, completion: nil)
        self.popup.animateView(transform: CGAffineTransform(translationX: 0, y: 0), duration: 0.74)
    }
}
