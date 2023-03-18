
import UIKit

class ViewController: UIViewController {

    @IBOutlet var t1: UITextField!
    @IBOutlet var t2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let abc = segue.destination as! ViewController2
        abc.a3 = t1.text!
        abc.a4 = t2.text!
    }
    

    @IBAction func saveAction(_ sender: Any) {
        let alert = UIAlertController(title: "select", message: "save the username and password ?", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "SAVE", style: .default, handler: {i in self.saveButton()}))
        alert.addAction(UIAlertAction.init(title: "CANCEL", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func saveButton(){
        UserDefaults.standard.set(t1.text, forKey: "username")
        UserDefaults.standard.set(t2.text, forKey: "password")
        performSegue(withIdentifier: "cell", sender: Self.self)
    }
}

