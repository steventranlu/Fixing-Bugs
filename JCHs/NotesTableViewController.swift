//
//  NotesTableViewController.swift
//  JCHs
//
//  Created by Steven Lu on 5/12/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController {

    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var noteView: UITextView!
    
    
    var toDoItem: ToDoItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if toDoItem == nil {
            toDoItem = ToDoItem(name: "", notes: "" )
        }
        
        nameField.text = toDoItem.name
        noteView.text = toDoItem.notes
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        toDoItem = ToDoItem(name: nameField.text!, notes: noteView.text)
    }

    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
            
        }
    }
}
