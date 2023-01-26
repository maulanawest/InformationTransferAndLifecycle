//
//  ViewController.swift
//  InformationTransferAndLifecycle
//
//  Created by west on 26/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var data = ""

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var dataTextField: UITextField!
    
    //view Apakah Load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Lifecycle for iOS
        print("viewDidLoad function call....")
    }
    
    //view Apakah Menghilang
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function call....")
    }

    //view/pandangan Akan Menghilang
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function call....")
    }
    
    //view Akan Muncul
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function call....")
        dataTextField.text = ""
    }
    
    //view apakah muncul
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function call....")
    }
    
    @IBAction func nextClick(_ sender: Any) {
        data = dataTextField.text!
        performSegue(withIdentifier: "toSecondScreen", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondScreen" {
            //as -- Casting
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.myData = data
        }
    }
    
}

