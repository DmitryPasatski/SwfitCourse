import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var labelForObject: UILabel!
    var secondText = ""
    var objectOnSecondVC = Custom(name: "", weight: 0, height: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        labelForObject.text = ("Name: \(objectOnSecondVC.name), Weight: \(objectOnSecondVC.weight), Height: \(objectOnSecondVC.height) ")
        
    }
    @IBAction func nextViewButtonPressed(_ sender: UIButton) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        controller.thirdText = secondText
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    
}
