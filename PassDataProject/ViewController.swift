//
//  ViewController.swift
//  PassDataProject
//
//  Created by Artiom Poluyanovich on 1.05.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var resulLabel: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showSecondVC", sender: nil)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        guard let secondVC = segue.source as? SecondViewController else { return }
        resulLabel.text = secondVC.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

