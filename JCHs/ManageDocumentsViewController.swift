//
//  ManageDocumentsViewController.swift
//  JCHs
//
//  Created by Steven Lu on 4/23/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class ManageDocumentsViewController: UIViewController {

    @IBOutlet weak var labelUnavailable: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var buttonScanReceipts: UIButton!
    @IBOutlet weak var buttonManageDocuments: UIButton!
    
    
    var takeNotes = ["Call MOM and POPS!", "Pay Car Insurance (Feb 2021)","Pay Rent Insurance Bills (May 2021)","Call Insurance Provider", "'Add Task'"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        labelUnavailable.text = ""
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowTaskTitle" {
            let destination = segue.destination as! TakeNotesViewController
            let selectedRow = tableView.indexPathForSelectedRow?.row
            destination.taskTitle = takeNotes[selectedRow!]
        } else {
            if let indexPath = tableView.indexPathForSelectedRow {
                tableView.deselectRow(at: indexPath, animated: true)
            }
        }
    }
    
    @IBAction func unwindFromTakeNotesViewController(segue: UIStoryboardSegue) {
        let source = segue.source as! TakeNotesViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            takeNotes[indexPath.row] = source.taskTitle
            tableView.reloadRows(at: [indexPath], with: .automatic)
        } else {
            let newIndexPath = IndexPath(row: takeNotes.count, section: 0)
            takeNotes.append(source.taskTitle)
            tableView.insertRows(at: [newIndexPath], with: .bottom)
            tableView.scrollToRow(at: newIndexPath, at: .bottom, animated: true)
        }
    }
    @IBAction func buttonScanReceipts(_ sender: UIButton) {
        labelUnavailable.text = "Purchase Scanning feature for $1.99!"
    }
    @IBAction func buttonManageDocuments(_ sender: UIButton) {
        labelUnavailable.text = "Purchase Document Management feature for $3.99!"
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
