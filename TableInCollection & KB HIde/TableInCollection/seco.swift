//
//  seco.swift
//  TableInCollection
//
//  Created by agile on 5/29/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class seco: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
