import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        createUser()
    }
    
    func createUser(){
          Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (result, error) in
              if result != nil{
                self.performSegue(withIdentifier: "dash", sender: self)
              }
              else{
                  print("user cannot be created")
              }
          }
      }
    
    @IBAction func signIn(_ sender: UIButton) {
        performSegue(withIdentifier: "signin", sender: self)
    }

  
}
