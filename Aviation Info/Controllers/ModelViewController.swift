//
//  ModelTableViewController.swift
//  Aviation Info
//
//  Created by Henry Jiang on 1/3/21.
//  Copyright © 2021 Henry Jiang. All rights reserved.
//

import UIKit

class ModelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

}


extension ModelViewController: UITableViewDelegate, UITableViewDataSource {
    
    // TableView Initialization & Configuration
//    func initTableView() {
//        ManufacturerTableView.dataSource = self
//        ManufacturerTableView.delegate = self
//    }
//
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManufacturerCell", for: indexPath)
        cell.textLabel?.text = "Place Holder"
        return cell;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
