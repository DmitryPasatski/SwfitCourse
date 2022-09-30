import UIKit

class GameViewController: UIViewController {
    
    //MARK: - Views and Buttons
    
    @IBOutlet weak var submarineView: UIView!
    @IBOutlet weak var seaView: UIView!
    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var earthView: UIView!
    @IBOutlet weak var oxigenView: UIView!
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    
    //MARK: - Let/Var
    
    var timer = Timer()
    
    override func viewDidLoad() {
        self.submarineView.frame = CGRect(x: 50, y: self.view.frame.height/2, width: 90, height: 30)
        view.addSubview(submarineView)


        
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    
    func submarineUp(){
        if self.submarineView.frame.origin.y < self.waterView.frame.origin.y {
            self.submarineView.frame.origin.y -= 0
        } else {
            self.submarineView.frame.origin.y -= 10
                    }
    }
    
    func submarineDown(){
        if self.submarineView.frame.origin.y + self.submarineView.frame.height > self.earthView.frame.origin.y {
            self.submarineView.frame.origin.y += 0
        } else {
            self.submarineView.frame.origin.y += 10
                    }
    }
     
    func oxigen(){
        if self.submarineView.frame.origin.y > self.seaView.frame.origin.y {
                timer = Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true, block: { _  in
                    UIView.animate(withDuration: 0.3) {
                        self.oxigenView.frame.origin.y += 5
                    }
            })
        } else if self.submarineView.frame.origin.y <= self.seaView.frame.origin.y {
            timer = Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true, block: { _  in
                UIView.animate(withDuration: 0.3) {
                    self.oxigenView.frame.origin.y -= 10
                }
        })
            
        }
    }
    
    // MARK: - Actions
    @IBAction func upButtonPressed(_ sender: UIButton) {
        timer = Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true, block: { _  in
            UIView.animate(withDuration: 0.3) {
                self.submarineUp()
                
            }
        })
        
      
        
    }
    
    
    @IBAction func upButtonNotPressed(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func downButtonPressed(_ sender: UIButton) {
        timer = Timer.scheduledTimer(withTimeInterval: 0.15, repeats: true, block: { _  in
            UIView.animate(withDuration: 0.3) {
                self.submarineDown()
                
            }
        })
    }
    
    @IBAction func downButtonNotPressed(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
