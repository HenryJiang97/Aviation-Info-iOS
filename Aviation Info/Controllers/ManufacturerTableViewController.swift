//
//  ManufacturerTableViewController.swift
//  Aviation Info
//
//  Created by Henry Jiang on 9/7/20.
//  Copyright © 2020 Henry Jiang. All rights reserved.
//

import UIKit

class ManufacturerTableViewController: UITableViewController {
    let manufacturers: [String] = ["Boeing", "AirBus"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initTableView()
    }
    
    // TableView Initialization & Configuration
    func initTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return manufacturers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManufacturerCell", for: indexPath)
        cell.textLabel?.text = "TEST"
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
