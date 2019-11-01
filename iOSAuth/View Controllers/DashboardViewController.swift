
import UIKit
import FirebaseAuth

class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    

    @IBAction func logoutAction(_ sender: UIButton) {
      do{
          try Auth.auth().signOut()
          performSegue(withIdentifier: "home", sender: self)
      }
      catch let logout{
          print(logout)
      }
    }

}
