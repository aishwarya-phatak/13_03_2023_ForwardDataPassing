//
//  SecondViewController.swift
//  13_03_2023_ForwardDataPassing
//
//  Created by Vishal Jagtap on 17/04/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    

    var dataContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = false
        
        self.nameLabel.text = dataContainer
    }
    
    @IBAction func btnClickMoveToThirdVC(_ sender: Any) {
        let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        navigationController?.pushViewController(thirdViewController!, animated: true)
    }
    

    

}
