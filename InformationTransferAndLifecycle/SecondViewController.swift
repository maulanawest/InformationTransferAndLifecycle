//
//  SecondViewController.swift
//  InformationTransferAndLifecycle
//
//  Created by west on 26/01/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    var myData = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataLabel.text = myData

    }

}
