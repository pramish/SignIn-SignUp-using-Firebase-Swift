
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func SignIn(_ sender: UIButton) {
        performSegue(withIdentifier: "login", sender: self)
    }
    
    
    @IBAction func SignUp(_ sender: UIButton) {
        performSegue(withIdentifier: "signup", sender: self)
    }
}

