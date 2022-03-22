//
//  GameScreen.swift
//  BlackJack
//
//  Created by tavmac on 2022-03-21.
//

import UIKit

class GameScreen: UIViewController {
    @IBOutlet weak var Blur: UIVisualEffectView!
    @IBOutlet weak var PlayBtn: UIButton!
    @IBOutlet weak var PlayerScoreLbl: UILabel!
    var dealerArr = [1, 2, 3, 4, 5, 6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51].shuffled() //make the num arrays for cards
    var playerArr = [1, 2, 3, 4, 5, 6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51].shuffled() //shuffle to randomize
    var playerCard1 = 0 //make the cards and give them default value
    var playerCard2 = 0
    var dealerCard1 = 0
    var dealerCard2 = 0
    var playerScore = 0
    var dealerScore = 0
    var gameStarted = false
    var counter1 = 1
    var counter2 = 2
    var hitCounter = 0
    var firstHit = true
    var bust = false
    @IBOutlet weak var DealerCard1: UIImageView!
    @IBOutlet weak var DealerCard2: UIImageView!
    @IBOutlet weak var PlayerCard1: UIImageView!
    @IBOutlet weak var PlayerCard2: UIImageView!
    @IBOutlet weak var PlayerCard3: UIImageView!
    @IBOutlet weak var PlayerCard4: UIImageView!
    @IBOutlet weak var StayBtn: UIButton!
    @IBOutlet weak var HitBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func StartGame(_ sender: UIButton) {
        gameStarted = true
        PlayBtn.isHidden = true
        Blur.isHidden = true
        dealerCard1 = dealerArr[0]
        dealerCard2 = dealerArr[1]
        DealPlayerCard1(deal1: playerArr[0], deal2: playerArr[1])
    }
    @IBAction func HItBtn(_ sender: UIButton) {
        if (gameStarted) {
            if (firstHit && !bust) {
                let pNextCard1 = playerArr.index(after: counter1)
                let pNextCard2 = playerArr.index(after: counter2)
                DealPlayerCard1(deal1: playerArr[pNextCard1], deal2: playerArr[pNextCard2])
                counter1 += 1
                counter2 += 1
                print("card 1 and 2 played")
            }
            if (hitCounter == 1 && !bust) {
                firstHit = false
                let pNextCard3 = playerArr.index(after: counter1)
                DealPlayerCard2(deal1: playerArr[pNextCard3])
                counter1 += 1
                print("card three played")
            }
            hitCounter += 1
        }
    }
    
    func DealPlayerCard1(deal1: Int, deal2: Int) {
        if (deal1 == 1) {
            PlayerCard1.image = UIImage(named: "club_1")
            playerScore += 1
        } else if (deal1 == 2) {
            PlayerCard1.image = UIImage(named: "club_2")
            playerScore += 2
        } else if (deal1 == 3) {
            PlayerCard1.image = UIImage(named: "club_3")
            playerScore += 3
        } else if (deal1 == 4) {
            PlayerCard1.image = UIImage(named: "club_4")
            playerScore += 4
        } else if (deal1 == 5) {
            PlayerCard1.image = UIImage(named: "club_5")
            playerScore += 5
        }
        if (deal2 == 1) {
            PlayerCard2.image = UIImage(named: "club_1")
            playerScore += 1
        } else if (deal2 == 2) {
            PlayerCard2.image = UIImage(named: "club_2")
            playerScore += 2
        } else if (deal2 == 3) {
            PlayerCard2.image = UIImage(named: "club_3")
            playerScore += 3
        } else if (deal2 == 4) {
            PlayerCard2.image = UIImage(named: "club_4")
            playerScore += 4
        } else if (deal2 == 5) {
            PlayerCard2.image = UIImage(named: "club_5")
            playerScore += 5
        }
        PlayerScoreLbl.text = "Your score is: \(playerScore)"
        if (playerScore > 21) {
            PlayerScoreLbl.text = "Bust, game over"
        }
    }
    func DealPlayerCard2(deal1: Int) {
        print(" card three is: \(deal1)")
        if (deal1 == 1) {
            PlayerCard3.image = UIImage(named: "club_1")
            playerScore += 1
        } else if (deal1 == 2) {
            PlayerCard3.image = UIImage(named: "club_2")
            playerScore += 2
        } else if (deal1 == 3) {
            PlayerCard3.image = UIImage(named: "club_3")
            playerScore += 3
        } else if (deal1 == 4) {
            PlayerCard3.image = UIImage(named: "club_4")
            playerScore += 4
        } else if (deal1 == 5) {
            PlayerCard3.image = UIImage(named: "club_5")
            playerScore += 5
        } else if (deal1 == 6) {
            PlayerCard3.image = UIImage(named: "club_6")
            playerScore += 6
        } else if (deal1 == 7) {
            PlayerCard3.image = UIImage(named: "club_7")
            playerScore += 7
        } else if (deal1 == 8) {
            PlayerCard3.image = UIImage(named: "club_8")
            playerScore += 8
        } else if (deal1 == 9) {
            PlayerCard3.image = UIImage(named: "club_9")
            playerScore += 9
        } else if (deal1 == 10) {
            PlayerCard3.image = UIImage(named: "club_10")
            playerScore += 10
        } else if (deal1 == 11) {
            PlayerCard3.image = UIImage(named: "club_king")
            playerScore += 10
        } else if (deal1 == 12) {
            PlayerCard3.image = UIImage(named: "club_queen")
            playerScore += 10
        } else if (deal1 == 13) {
            PlayerCard3.image = UIImage(named: "club_jack")
            playerScore += 10
        } else if (deal1 == 14) {
            PlayerCard3.image = UIImage(named: "diamond_1")
            playerScore += 1
        } else if (deal1 == 15) {
            PlayerCard3.image = UIImage(named: "diamond_2")
            playerScore += 2
        } else if (deal1 == 16) {
            PlayerCard3.image = UIImage(named: "diamond_3")
            playerScore += 3
        } else if (deal1 == 17) {
            PlayerCard3.image = UIImage(named: "diamond_4")
            playerScore += 4
        } else if (deal1 == 18) {
            PlayerCard3.image = UIImage(named: "diamond_5")
            playerScore += 5
        } else if (deal1 == 19) {
            PlayerCard3.image = UIImage(named: "diamond_6")
            playerScore += 6
        } else if (deal1 == 20) {
            PlayerCard3.image = UIImage(named: "diamond_7")
            playerScore += 7
        } else if (deal1 == 21) {
            PlayerCard3.image = UIImage(named: "diamond_8")
            playerScore += 8
        } else if (deal1 == 22) {
            PlayerCard3.image = UIImage(named: "diamond_9")
            playerScore += 9
        } else if (deal1 == 23) {
            PlayerCard3.image = UIImage(named: "diamond_10")
            playerScore += 10
        } else if (deal1 == 24) {
            PlayerCard3.image = UIImage(named: "diamond_king")
            playerScore += 10
        } else if (deal1 == 25) {
            PlayerCard3.image = UIImage(named: "diamond_queen")
            playerScore += 10
        } else if (deal1 == 26) {
            PlayerCard3.image = UIImage(named: "diamond_jack")
            playerScore += 10
        } else if (deal1 == 27) {
            PlayerCard3.image = UIImage(named: "heart_1")
            playerScore += 1
        } else if (deal1 == 28) {
            PlayerCard3.image = UIImage(named: "heart_2")
            playerScore += 2
        } else if (deal1 == 28) {
            PlayerCard3.image = UIImage(named: "heart_3")
            playerScore += 3
        } else if (deal1 == 29) {
            PlayerCard3.image = UIImage(named: "heart_4")
            playerScore += 4
        } else if (deal1 == 30) {
            PlayerCard3.image = UIImage(named: "heart_5")
            playerScore += 5
        } else if (deal1 == 31) {
            PlayerCard3.image = UIImage(named: "heart_6")
            playerScore += 6
        } else if (deal1 == 32) {
            PlayerCard3.image = UIImage(named: "heart_7")
            playerScore += 7
        } else if (deal1 == 33) {
            PlayerCard3.image = UIImage(named: "heart_8")
            playerScore += 8
        } else if (deal1 == 34) {
            PlayerCard3.image = UIImage(named: "heart_9")
            playerScore += 9
        } else if (deal1 == 35) {
            PlayerCard3.image = UIImage(named: "heart_10")
            playerScore += 10
        } else if (deal1 == 36) {
            PlayerCard3.image = UIImage(named: "heart_king")
            playerScore += 10
        } else if (deal1 == 37) {
            PlayerCard3.image = UIImage(named: "heart_queen")
            playerScore += 10
        } else if (deal1 == 38) {
            PlayerCard3.image = UIImage(named: "heart_jack")
            playerScore += 1
        } else if (deal1 == 39) {
            PlayerCard3.image = UIImage(named: "spade_1")
            playerScore += 1
        } else if (deal1 == 40) {
            PlayerCard3.image = UIImage(named: "spade_2")
            playerScore += 2
        } else if (deal1 == 41) {
            PlayerCard3.image = UIImage(named: "spade_3")
            playerScore += 3
        } else if (deal1 == 42) {
            PlayerCard3.image = UIImage(named: "spade_4")
            playerScore += 4
        } else if (deal1 == 43) {
            PlayerCard3.image = UIImage(named: "spade_5")
            playerScore += 5
        } else if (deal1 == 44) {
            PlayerCard3.image = UIImage(named: "spade_6")
            playerScore += 6
        } else if (deal1 == 45) {
            PlayerCard3.image = UIImage(named: "spade_7")
            playerScore += 7
        } else if (deal1 == 46) {
            PlayerCard3.image = UIImage(named: "spade_8")
            playerScore += 8
        } else if (deal1 == 47) {
            PlayerCard3.image = UIImage(named: "spade_9")
            playerScore += 9
        } else if (deal1 == 48) {
            PlayerCard3.image = UIImage(named: "spade_10")
            playerScore += 10
        } else if (deal1 == 49) {
            PlayerCard3.image = UIImage(named: "spade_king")
            playerScore += 10
        } else if (deal1 == 50) {
            PlayerCard3.image = UIImage(named: "spade_queen")
            playerScore += 10
        } else if (deal1 == 51) {
            PlayerCard3.image = UIImage(named: "spade_jack")
            playerScore += 10
        }
        
        PlayerScoreLbl.text = "Your score is: \(playerScore)"
        if (playerScore > 21) {
            PlayerScoreLbl.text = "Bust, game over"
        }
    }
    
    @IBAction func StayClick(_ sender: UIButton) {
        HitBtn.isHidden = true
        let pNextCard1 = playerArr.index(after: counter1)
        let pNextCard2 = playerArr.index(after: counter2)
        stay(deal1: playerArr[pNextCard1], deal2: playerArr[pNextCard2])
        counter1 += 1
        counter2 += 1
    }
    func stay(deal1: Int, deal2: Int) {
        if (deal1 == 1) {
            PlayerCard1.image = UIImage(named: "club_1")
            dealerScore += 1
        } else if (deal1 == 2) {
            PlayerCard1.image = UIImage(named: "club_2")
            dealerScore += 2
        } else if (deal1 == 3) {
            PlayerCard1.image = UIImage(named: "club_3")
            dealerScore += 3
        } else if (deal1 == 4) {
            PlayerCard1.image = UIImage(named: "club_4")
            dealerScore += 4
        } else if (deal1 == 5) {
            PlayerCard1.image = UIImage(named: "club_5")
            dealerScore += 5
        }
        if (deal2 == 1) {
            PlayerCard2.image = UIImage(named: "club_1")
            dealerScore += 1
        } else if (deal2 == 2) {
            PlayerCard2.image = UIImage(named: "club_2")
            dealerScore += 2
        } else if (deal2 == 3) {
            PlayerCard2.image = UIImage(named: "club_3")
            dealerScore += 3
        } else if (deal2 == 4) {
            PlayerCard2.image = UIImage(named: "club_4")
            dealerScore += 4
        } else if (deal2 == 5) {
            PlayerCard2.image = UIImage(named: "club_5")
            dealerScore += 5
        }
    }
}
