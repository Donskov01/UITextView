//
//  ViewController.swift
//  UITextView
//
//  Created by Fedor Donskov on 31.10.2021.
//

import UIKit

class ViewController: UIViewController {

    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTextView()
    }
    func createTextView() {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 40, height: self.view.bounds.height / 2))
        myTextView.text = "Some text"
        myTextView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        self.view.addSubview(myTextView)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.myTextView.resignFirstResponder()
        self.myTextView.backgroundColor = UIColor.white
    }
    

}

