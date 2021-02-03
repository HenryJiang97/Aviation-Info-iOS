//
//  HomeViewController.swift
//  Aviation Info
//
//  Created by Henry Jiang on 9/7/20.
//  Copyright © 2020 Henry Jiang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var aircraftInfoButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func onAircraftInfoButtonClicked(_ sender: Any) {
        performSegue(withIdentifier: "Home2Manufacturer", sender: nil)
    }
    
}
