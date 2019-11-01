import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func signIn(_ sender: UIButton) {
        authenticateUser()
    }
    func authenticateUser(){
         Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (result, error) in
             if result != nil {
                 self.performSegue(withIdentifier: "dash", sender: self)
             }
             else{
                 print("User is not authenticated")
             }
         }
     }
    
    @IBAction func register(_ sender: UIButton) {
        performSegue(withIdentifier: "register", sender: self)
    }
    
 
    
}
