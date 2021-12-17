//
//  AddCigarViewController.swift
//  Cigar'D
//
//  Created by Austin Potts on 12/17/21.
//

import UIKit

class AddCigarViewController: UIViewController {
    
    @IBOutlet var cigarBrandTextField: UITextField!
    
    var cigarArray: [Cigar] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // Once button is tapped, I want to save the cigar to the users cigar array then dismiss the VC
    @IBAction func saveCigarButton(_ sender: Any) {
        
        guard let cigarName = cigarBrandTextField.text else { return }
        
        let newCigar = Cigar(cigarBrand: cigarName, cigarDate: "", cigarLocation: "")
        cigarArray.append(newCigar)
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
