//
//  ManufacturerViewController.swift
//  Aviation Info
//
//  Created by Henry Jiang on 1/9/21.
//  Copyright © 2021 Henry Jiang. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift


class ManufacturerViewController: UIViewController {
    
    var manufacturers: [String] = []
    var db : Firestore!

    @IBOutlet weak var ManufacturerTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Firebase setup
        let settings = FirestoreSettings()
        Firestore.firestore().settings = settings
        
        db = Firestore.firestore()

        getCollection()
    }
    
    // Get data from Firestore collection
    func getCollection() {
        db.collection("Planes").getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    self.manufacturers.append(document.documentID)
                }
            }
            DispatchQueue.main.async {
                self.ManufacturerTableView.reloadData()
            }
        }
    }
}

extension ManufacturerViewController: UITableViewDelegate, UITableViewDataSource {
    
    // TableView Initialization & Configuration
//    func initTableView() {
//        ManufacturerTableView.dataSource = self
//        ManufacturerTableView.delegate = self
//    }
//    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manufacturers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManufacturerCell", for: indexPath)
        cell.textLabel?.text = manufacturers[indexPath.row]
        return cell;
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
