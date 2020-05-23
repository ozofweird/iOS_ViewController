//
//  ViewController.swift
//  ViewController
//
//  Created by Ahn on 2020/05/23.
//  Copyright © 2020 ozofweird. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondProtocol {
    
    @IBOutlet weak var delegateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func sendData(data: String) {
        self.delegateLabel.text = data
    }
    
    @IBAction func secondBtn(_ sender: Any) {
/*
        guard let sc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondController else {
            return
        }
        sc.modalPresentationStyle = .fullScreen
        self.present(sc, animated: true, completion: nil)
*/
        
        let svc = SecondController(nibName: "SecondController", bundle: nil)
        svc.modalPresentationStyle = .fullScreen
        svc.secondProtocol = self
        self.present(svc, animated: true, completion: nil)
    }
    
}

