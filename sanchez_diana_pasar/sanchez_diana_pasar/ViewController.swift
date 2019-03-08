//
//  ViewController.swift
//  sanchez_diana_pasar
//
//  Created by Universidad Politecnica de Gómez Palacio on 08/03/19.
//  Copyright © 2019 UPGOP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txfFullName: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txfFullName.text = "Diana Gizel Sanchez Puentes"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendData(_ sender: Any)
    {
        //self.txfFullName.text = "Alondra de la cruz rodriguez"
        let fullName: String = self.txfFullName.text ?? ""
        self.performSegue(withIdentifier: "sgSecondTVC", sender: fullName)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "sgSecondTVC"
        {
            if let secondTVC: SecondTVC = segue.destination as? SecondTVC
            {
                if let fullName: String = sender as? String
                {
                    secondTVC.fullName = fullName
                }
            }
        }
    }
    
}

