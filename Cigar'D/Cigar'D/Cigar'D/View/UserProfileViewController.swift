//
//  UserProfileViewController.swift
//  Cigar'D
//
//  Created by Austin Potts on 12/16/21.
//

import UIKit

class UserProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
  
    
    
    
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userName: UILabel!
    @IBOutlet var totalCigars: UILabel!
    @IBOutlet var topFiveTableView: UITableView!
    
    var topFivecigars: [Cigar] = [Cigar(cigarBrand: "Cuban", cigarDate: "Dec 15", cigarLocation: "Palm Harbor")]
    var name: String = ""
    var totalCigarsSmoked: String = ""
    
    
    // I need to fetch user from firebase then assign keys to properties
    override func viewDidLoad() {
        super.viewDidLoad()

        self.topFiveTableView.delegate = self
        self.topFiveTableView.dataSource = self
    }
    
    // Top 5 Cigars Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topFivecigars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //access array index path
        let cigar = topFivecigars[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CigarCell", for: indexPath)
        cell.textLabel?.text = cigar.cigarBrand
        return cell
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
