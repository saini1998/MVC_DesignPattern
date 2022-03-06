//
//  HomeViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLbl: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        user = NetworkService.share.getLoggedInUser()
        welcomeUser()
    }
    
    private func welcomeUser() {
        welcomeLbl.text = "Hello \(user.firstName) \(user.lastName)"
    }
}

 
