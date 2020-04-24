import UIKit

class TakeNotesViewController: UIViewController {

    
    var taskTitle = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskItemField.text = taskTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        taskTitle = taskItemField.text!
    }
    
    
    
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
    


