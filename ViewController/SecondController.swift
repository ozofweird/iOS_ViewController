//
//  SecondController.swift
//  ViewController
//
//  Created by Ahn on 2020/05/23.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit

protocol SecondProtocol {
    func sendData(data: String)
}

class SecondController: UIViewController {

    @IBOutlet weak var secondTextView: UITextField!
    
    var secondProtocol: SecondProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backBtn(_ sender: Any) {
        if let text = secondTextView.text {
            secondProtocol?.sendData(data: text)
            dismiss(animated: true, completion: nil)
        }
    }
}
