import UIKit
import Foundation



var shipImage = UIImage(named: "ship")

class GameViewController: UIViewController {
    
    //MARK: - Views and Buttons
    
    @IBOutlet weak var upButton: UIButton!
    @IBOutlet weak var downButton: UIButton!
    
    @IBOutlet weak var oxygenImageView: UIImageView!
    @IBOutlet weak var submarineImageView: UIImageView!
    @IBOutlet weak var skiImageView: UIImageView!
    @IBOutlet weak var waterImageView: UIImageView!
    @IBOutlet weak var earthImageView: UIImageView!
    @IBOutlet weak var shipImageView: UIImageView!
    @IBOutlet weak var fishImageView: UIImageView!
    @IBOutlet weak var stoneImageView: UIImageView!
    
    @IBOutlet weak var gameOverImageView: UIImageView!
    
    
    
    //MARK: - Let/Var
    let one = CGFloat(3)
    
    var shipImage = UIImage(named: "ship")
    var timerMoving = Timer()
    var timerOxygen = Timer()
    
    
    override func viewDidLoad() {
        
        let randomCGFloat = CGFloat.random(in: waterImageView.frame.origin.y..<earthImageView.frame.origin.y - 30)
        let shipObstacle = Obstacle(name: "ship", x: view.frame.width, y: waterImageView.frame.origin.y - shipImageView.frame.height / 3 * 2 , height: 100, width: 100, speed: 10)
        let stoneObstacle = Obstacle(name: "stone", x: view.frame.width, y: earthImageView.frame.origin.y - 50, height: 50, width: 50, speed: 10)
        let fishObstacle = Obstacle(name: "fish", x: view.frame.width, y: CGFloat.random(in: waterImageView.frame.origin.y..<earthImageView.frame.origin.y - 30), height: 20, width: 20, speed: 10)
        submarineImageView.frame = CGRect(x: 60, y: 180, width: 80, height: 40)
        submarineImageView.image = UIImage(named: "ship")
        view.addSubview(submarineImageView)
        
//        shipImageView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
//        shipImageView.image = shipImage
//        view.addSubview(shipImageView)
        
        timerMoving = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { _  in
            self.gameOver()
        })
        
        timerOxygen = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _  in
            self.oxygen()
        })
        timerMoving = Timer.scheduledTimer(withTimeInterval: 10, repeats: true, block: { [self] _  in
            self.addObstacle(obstacle: shipObstacle, imageView: self.shipImageView)
            self.addObstacle(obstacle: stoneObstacle, imageView: self.stoneImageView)
            self.addObstacle(obstacle: fishObstacle, imageView: self.fishImageView)
        })
        
        timerMoving = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _  in
            UIImageView.animate(withDuration: 0.3) {
                self.shipImageView.frame.origin.x -= 10
                self.fishImageView.frame.origin.x -= 8
                self.stoneImageView.frame.origin.x -= 12
            }
        })
        
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    
    func gameOver(){
        if self.submarineImageView.frame == self.shipImageView.frame {
            gameOverImageView.isHidden = false
        }
    }
    
    func addObstacle(obstacle: Obstacle, imageView: UIImageView){
        let image = UIImage(named: obstacle.name)
        imageView.image = image
        imageView.frame = CGRect(x: obstacle.x, y: obstacle.y, width: obstacle.width, height: obstacle.height)
        view.addSubview(self.shipImageView)
       
    }
    
    func submarineUp(){
        if self.submarineImageView.frame.origin.y >= self.waterImageView.frame.origin.y {
            UIImageView.animate(withDuration: 0.3) {
                self.submarineImageView.frame.origin.y -= 1
            }
        } else {
            return
        }
    }
    
    
    func submarineDown(){
        if self.submarineImageView.frame.origin.y + self.submarineImageView.frame.height <= self.earthImageView.frame.origin.y {
            UIImageView.animate(withDuration: 0.3) {
                self.submarineImageView.frame.origin.y += 1
            }
        } else {
            return
        }
    }
    
    func oxygen(){
        if self.submarineImageView.frame.origin.y > self.waterImageView.frame.origin.y && self.oxygenImageView.frame.origin.y <= self.view.frame.height {
            UIImageView.animate(withDuration: 0.3) {
                self.oxygenImageView.frame.origin.y += 1
            }
        } else if self.submarineImageView.frame.origin.y <= self.waterImageView.frame.origin.y && self.oxygenImageView.frame.origin.y >= self.view.frame.origin.y {
            UIImageView.animate(withDuration: 0.3) {
                self.oxygenImageView.frame.origin.y -= 3
            }
            
        }
    }
    
//    func movingObstacle(_ :Obstacle){
//        //let image = UIImage(named: obstacle.name)
//    }
    
    
    
    // MARK: - Actions
    
    @IBAction func upButtonPressed(_ sender: UIButton) {
        timerMoving = Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true, block: { _  in
            self.submarineUp()
                    })
    }
    @IBAction func upButtonNotPressed(_ sender: UIButton) {
        submarineUp()
        timerMoving.invalidate()

    }
    
    @IBAction func downButtonPressed(_ sender: UIButton) {
        timerMoving = Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true, block: { _  in
            self.submarineDown()
            
        })
    }
    @IBAction func downButtonNotpressed(_ sender: UIButton) {
        submarineDown()
        timerMoving.invalidate()
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
