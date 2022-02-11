//
//  ViewController.swift
//  LoginViewProgrammatically
//
//  Created by Hiren on 11/02/22.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        let loginUIView = LoginUIView(frame: CGRect(x: 0, y: 55, width: view.frame.size.width, height: 150))
        view.backgroundColor = .lightGray
        loginUIView.backgroundColor = .red

        view.addSubview(loginUIView)
        // Do any additional setup after loading the view.
    }


}

