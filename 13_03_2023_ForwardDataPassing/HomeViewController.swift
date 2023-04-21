//
//  HomeViewController.swift
//  13_03_2023_ForwardDataPassing
//
//  Created by Vishal Jagtap on 20/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func btnSubmitClick(_ sender: Any) {
        
       let extractedFirstName = self.firstNameTextField.text
       let extractedRollNumber = Int(self.rollNumberTextField.text!)
       let extractedCity = self.cityTextField.text
        
        let dashBoardViewController = self.storyboard?.instantiateViewController(withIdentifier: "DashBoardViewController") as? DashBoardViewController
        
        dashBoardViewController?.studentContainer = Student(
            firstName: extractedFirstName ?? "Shubham",
            rollNumber: extractedRollNumber ?? 1,
            city: extractedCity ?? "Pune")
        
        navigationController?.pushViewController(dashBoardViewController!, animated: true)
    }
    
}
