//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Artiom Poluyanovich on 1.05.21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var login: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
    }
    

}
