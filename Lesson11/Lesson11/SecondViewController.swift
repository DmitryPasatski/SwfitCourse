import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    var isDown = false
    var timer = Timer()
    //let firstView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    override func viewDidLoad() {
        firstView.layer.cornerRadius = firstView.frame.width/2
        super.viewDidLoad()
    }

    @IBAction func actionPressed(_ sender: Any) {
//        UIView.animate(withDuration: 0.3) {
//            self.firstView.frame.origin.y += 600
//            self.remove()}
//        } completion: { _  in
//            UIView.animate(withDuration: 0.3) {
//                self.firstView.frame.origin.y -= 600
        let position = isDown == true ? self.firstView.frame.origin.y - 600 : self.firstView.frame.origin.y + 600
        self.isDown = !self.isDown
        
        UIView.animate(withDuration: 0.3) {
            self.firstView.frame.origin.y = position
        }
            }
    func move(){
        let position = isDown == true ? self.firstView.frame.origin.y - 600 : self.firstView.frame.origin.y + 600
        self.isDown = !self.isDown
        
        UIView.animate(withDuration: 0.3) {
            self.firstView.frame.origin.y = position
        }
            }
    
        
    
    func remove(){
        if self.firstView.frame.origin.y < 600{
            self.firstView.frame.origin.y += 600
        } else {
            self.firstView.frame.origin.y -= 600

        }
    }
    
    @IBAction func backPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func startButtonPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _  in
            self.move()
            
        })
        timer.fire()
    }
    @IBAction func stopButtonPressed(_ sender: Any) {
        timer.invalidate()
    }
    
}

