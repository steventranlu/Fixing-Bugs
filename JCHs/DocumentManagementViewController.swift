//
//  DocumentManagementViewController.swift
//  JCHs
//
//  Created by Steven Lu on 5/12/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class DocumentManagementViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    
    var toDoArray = ["Call MOM and POPS!", "Pay Car Insurance (Feb 2021)","Pay Rent Insurance Bills (May 2021)","Call Insurance Provider", "'Add Task'"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}
extension DocumentManagementViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
    
    
}
