//
//  ModelTableViewController.swift
//  Aviation Info
//
//  Created by Henry Jiang on 1/3/21.
//  Copyright © 2021 Henry Jiang. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

class ModelViewController: UIViewController {
    
    var manufacturer: String = ""
    var models: [String] = []
    var db : Firestore!
    
    @IBOutlet weak var modelTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // View Controller configuration
        self.title = "Model"
        
        // Firebase configuration
        let settings = FirestoreSettings()
        Firestore.firestore().settings = settings
        db = Firestore.firestore()
        
        // Fetch database data
        getData()
    }

    func getData() {
        db.collection(manufacturer).getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    self.models.append(document.documentID)
                }
            }
            DispatchQueue.main.async {
                self.modelTableView.reloadData()
            }
        }
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
        return models.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ModelCell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        return cell;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
