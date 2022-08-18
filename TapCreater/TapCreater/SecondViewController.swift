import UIKit

class SecondViewController: UIViewController {
    // MARK: - Let/Var
    let someView = UIView()
    
    override func viewDidLoad() {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector (tap))
        self.view.addGestureRecognizer(recognizer)
        super.viewDidLoad()
        someView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        someView.backgroundColor = .blue
        self.view.addSubview(someView)
    }
    // MARK: - Functions

    
    // MARK: - IBActions
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let tapLocation = sender.location(in: sender.view)
        let myView = UIView()
        myView.frame = CGRect(x: tapLocation.x - 25, y: tapLocation.y - 25, width: 50, height: 50)
        myView.backgroundColor = .red
        myView.layer.cornerRadius = myView.frame.size.width/2
//        self.view.addSubview(myView)
        if myView.frame.intersects(myView.frame) == true {
            self.view.addSubview(myView)
        } else {return}
        
        
    }
    
    
}

