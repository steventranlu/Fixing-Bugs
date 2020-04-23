//
//  ManageDocumentsViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/23/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class ManageDocumentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var takeNotes = ["Pay May Payment", "Print Claims"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    


}

extension ManageDocumentsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return takeNotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = takeNotes[indexPath.row]
        return cell
    }
    
    
}
