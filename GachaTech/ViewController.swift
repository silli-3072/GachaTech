//
//  ViewController.swift
//  GachaTech
//
//  Created by 春田実利 on 2022/05/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func gacha(){
        self.performSegue(withIdentifier: "result", sender: nil )
    }


}

