//
//  ViewController.swift
//  HomeWorkFive
//
//  Created by Dmitry Alexandrovich on 19.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelCraftBeerScore: UILabel!
    @IBOutlet weak var plusCraftBeer: UIButton!
    @IBOutlet weak var minusCraftBeer: UIButton!
    
    @IBOutlet weak var labelBestBeer: UILabel!
    @IBOutlet weak var plusBestBeer: UIButton!
    @IBOutlet weak var minusBestBeer: UIButton!
    
    @IBOutlet weak var labelGoldBeer: UILabel!
    @IBOutlet weak var minusGoldBeer: UIButton!
    @IBOutlet weak var plusGoldBeer: UIButton!
    
    @IBOutlet weak var nowScoreLabel: UILabel!
    @IBOutlet weak var totalDayScoreLabel: UILabel!
    
    @IBOutlet weak var craftBeerOnStorageLable: UILabel!
    @IBOutlet weak var bestBeerOnStorageLabel: UILabel!
    @IBOutlet weak var goldBeerOnStorageButton: UILabel!
    
    @IBOutlet weak var sellButton: UIButton!
    @IBOutlet weak var startDayButton: UIButton!
    @IBOutlet weak var endDayButton: UIButton!
    
    let craftBeer = Beer(name: "CraftBeer", cost: 2.3)
    let bestBeer = Beer(name: "BestBeer", cost: 3.4)
    let goldBeer = Beer(name: "GoldBeer", cost: 2.5)
    var craftBeerOnStorage = 0
    var goldBeerOnStorage = 0
    var bestBeerOnStorage = 0
    
    let craftBeerA = BeerOnStorage(name: "CraftBeer", howMany: 100)
    let goldBeerA = BeerOnStorage(name: "GoldBeer", howMany: 100)
    let bestBeerA = BeerOnStorage(name: "BestBeer", howMany: 100)
    
    var scoreCraftBeer = 0
    var scoreBestBeer = 0
    var scoreGoldBeer = 0
    var nowScore = Double(0)
    var totalScore = Double(0)
    var priceNow = Double(0)
    var priceNowDouble = Double(0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        endDayButton.isHidden = true
        }
    
    @IBAction func minusCraftBeerButtonPressed(_ sender: UIButton) {
        if scoreCraftBeer > 0{
            scoreCraftBeer -= 1
        labelCraftBeerScore.text = "\(scoreCraftBeer)"
        priceNow -=  2.3
        priceNowDouble = Double(round(1000*priceNow)/1000)
        labelCraftBeerScore.text = "\(scoreCraftBeer)"
        nowScoreLabel.text = "\(priceNowDouble)$"
        }
        }
    
    @IBAction func plusCraftBeerButtonPressed(_ sender: UIButton) {
        if scoreCraftBeer < 100 && scoreCraftBeer < craftBeerOnStorage{
         scoreCraftBeer += 1
         priceNow +=  2.3
        priceNowDouble = Double(round(1000*priceNow)/1000)
        labelCraftBeerScore.text = "\(scoreCraftBeer)"
        nowScoreLabel.text = "\(priceNowDouble)"
        }
            }
    
    @IBAction func minusBestBeerPressed(_ sender: UIButton) {
        if scoreBestBeer > 0 {
            scoreBestBeer -= 1
        labelBestBeer.text = "\(scoreBestBeer)"
        priceNow -= 3.4
        priceNowDouble = Double(round(1000*priceNow)/1000)
        nowScoreLabel.text = "\(priceNowDouble)"
        }
    }
    @IBAction func plusBestBeerPressed(_ sender: UIButton) {
        if scoreBestBeer < 100 && scoreBestBeer < bestBeerOnStorage{
            scoreBestBeer += 1
         priceNow += 3.4
            priceNowDouble = Double(round(1000*priceNow)/1000)
        labelBestBeer.text = "\(scoreBestBeer)"
        nowScoreLabel.text = "\(priceNowDouble)"
        }
        }
    
    @IBAction func minusGoldBeerPressed(_ sender: UIButton) {
        if scoreGoldBeer > 0 {
            scoreGoldBeer -= 1
            labelGoldBeer.text = "\(scoreGoldBeer)"
            priceNow -= 2.5
            priceNowDouble = Double(round(1000*priceNow)/1000)
            nowScoreLabel.text = "\(priceNowDouble)"
        }
    }
    
    @IBAction func plusGoldBeerPressed(_ sender: Any) {
        if scoreGoldBeer < 100 && scoreGoldBeer < goldBeerOnStorage{
            scoreGoldBeer += 1
            labelGoldBeer.text = "\(scoreGoldBeer)"
            priceNow += 2.5
            priceNowDouble = Double(round(1000*priceNow)/1000)
            nowScoreLabel.text = "\(priceNowDouble)"
        }
    }
    @IBAction func startDayPressed(_ sender: UIButton) {
        craftBeerOnStorage += 100
        goldBeerOnStorage += 100
        bestBeerOnStorage += 100
        priceNow = 0
        craftBeerOnStorageLable.text = "\(craftBeerOnStorage)"
        goldBeerOnStorageButton.text = "\(goldBeerOnStorage)"
        bestBeerOnStorageLabel.text = "\(bestBeerOnStorage)"
        startDayButton.isHidden = true
        endDayButton.isHidden = false
    }
    
    @IBAction func sellPressed(_ sender: UIButton) {
        nowScore = (Double(scoreCraftBeer) * 2.3) + (Double(scoreBestBeer) * 3.4) + (Double(scoreGoldBeer) * 2.5)
        nowScoreLabel.text = "Give please \(nowScore)$"
        totalScore += nowScore
        craftBeerOnStorage -= scoreCraftBeer
        goldBeerOnStorage -= scoreGoldBeer
        bestBeerOnStorage -= scoreBestBeer
        craftBeerOnStorageLable.text = "\(craftBeerOnStorage)"
        goldBeerOnStorageButton.text = "\(goldBeerOnStorage)"
        bestBeerOnStorageLabel.text = "\(bestBeerOnStorage)"
        scoreCraftBeer = 0
        scoreGoldBeer = 0
        scoreBestBeer = 0
        priceNow = 0
        labelCraftBeerScore.text = "\(scoreCraftBeer)"
        labelGoldBeer.text = "\(scoreGoldBeer)"
        labelBestBeer.text = "\(scoreBestBeer)"
    }
    
    @IBAction func endDayPressed(_ sender: UIButton) {
        totalDayScoreLabel.text = "Proceeds today \(totalScore)"
        nowScoreLabel.text = ""
        craftBeerOnStorage = 0
        goldBeerOnStorage = 0
        bestBeerOnStorage = 0
        craftBeerOnStorageLable.text = "\(craftBeerOnStorage)"
        goldBeerOnStorageButton.text = "\(goldBeerOnStorage)"
        bestBeerOnStorageLabel.text = "\(bestBeerOnStorage)"
        startDayButton.isHidden = false
    }
    
}

