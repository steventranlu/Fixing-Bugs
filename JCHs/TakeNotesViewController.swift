import UIKit

class TakeNotesViewController: UIViewController {

    
    var taskTitle = ""
    var notesTitle = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskItemField.text = taskTitle
        notesItemField.text = notesTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        taskTitle = taskItemField.text!
        notesTitle = notesItemField.text!
    }
    
    
    
    @IBOutlet weak var notesItemField: UITextView!
    @IBOutlet weak var taskItemField: UITextField!
    @IBAction func cancelBarButton(_ sender: UIBarButtonItem) {
    
        
        
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
            }
        }
    }
    


