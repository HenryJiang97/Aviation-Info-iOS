//
//  ManufacturerViewController.swift
//  Aviation Info
//
//  Created by Henry Jiang on 1/9/21.
//  Copyright © 2021 Henry Jiang. All rights reserved.
//

import UIKit

class ManufacturerViewController: UIViewController {
    
    let manufacturers: [String] = ["Boeing", "AirBus"]

    @IBOutlet weak var ManufacturerTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

extension ManufacturerViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    // TableView Initialization & Configuration
    func initTableView() {
        ManufacturerTableView.dataSource = self
        ManufacturerTableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manufacturers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManufacturerCell", for: indexPath)
        cell.textLabel?.text = "TEST"
        return cell;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
