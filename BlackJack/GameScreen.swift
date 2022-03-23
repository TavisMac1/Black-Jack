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
    @IBOutlet weak var DealerScoreLbl: UILabel!
    //make the num arrays for cards
    var playerArr = [1, 2, 3, 4, 5, 6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51, 52].shuffled() //shuffle to randomize
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
    var chips = 0
    @IBOutlet weak var DealerCard1: UIImageView!
    @IBOutlet weak var DealerCard2: UIImageView!
    @IBOutlet weak var DealerCard3: UIImageView!
    @IBOutlet weak var DealerCard4: UIImageView!
    @IBOutlet weak var DealerCard5: UIImageView!
    @IBOutlet weak var DealerCard6: UIImageView!
    @IBOutlet weak var PlayerCard1: UIImageView!
    @IBOutlet weak var PlayerCard2: UIImageView!
    @IBOutlet weak var PlayerCard3: UIImageView!
    @IBOutlet weak var PlayerCard4: UIImageView!
    @IBOutlet weak var PlayerCard5: UIImageView!
    @IBOutlet weak var PlayerCard6: UIImageView!
    @IBOutlet weak var StayBtn: UIButton!
    @IBOutlet weak var HitBtn: UIButton!
    @IBOutlet weak var WinnerLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func StartGame(_ sender: UIButton) {
        gameStarted = true
        PlayBtn.isHidden = true
        Blur.isHidden = true
        DealPlayerCard2(deal1: playerArr[0], dealName: DealerCard1)
        DealPlayerCard2(deal1: playerArr[1], dealName: DealerCard2)
        DealPlayerCard1(deal1: playerArr[0], dealName: PlayerCard1)
        DealPlayerCard1(deal1: playerArr[1], dealName: PlayerCard2)
    }
    @IBAction func HItBtn(_ sender: UIButton) {
        if (gameStarted) {
            if (firstHit && !bust) {
                let pNextCard1 = playerArr.index(after: counter1)
                DealPlayerCard1(deal1: playerArr[pNextCard1], dealName: PlayerCard3)
                counter1 += 1
                counter2 += 1
                print("card 1 and 2 played")
                firstHit = false
            }
            if (hitCounter == 1 && !bust) {
                let pNextCard2 = playerArr.index(after: counter2)
                DealPlayerCard1(deal1: playerArr[pNextCard2], dealName: PlayerCard4)
                counter1 += 1
                print("card three played")
            }
            if (hitCounter == 2 && !bust) {
                let pNextCard3 = playerArr.index(after: counter1)
                DealPlayerCard1(deal1: playerArr[pNextCard3], dealName: PlayerCard5)
                counter1 += 1
                print("card four played")
            }
            if (hitCounter == 3 && !bust) {
                let pNextCard4 = playerArr.index(after: counter1)
                DealPlayerCard1(deal1: playerArr[pNextCard4], dealName: PlayerCard6)
                counter1 += 1
                print("card five played")
            }
            hitCounter += 1
        }
    }
    
    func DealPlayerCard1(deal1: Int, dealName: UIImageView) {
        switch deal1 {
        case 1:
                dealName.image = UIImage(named: "club_1")
                playerScore += 1
        case 2:
                dealName.image = UIImage(named: "club_2")
                playerScore += 2
        case 3:
                dealName.image = UIImage(named: "club_3")
                playerScore += 3
        case 4:
                dealName.image = UIImage(named: "club_4")
                playerScore += 4
        case 5:
                dealName.image = UIImage(named: "club_5")
                playerScore += 5
        case 6:
                dealName.image = UIImage(named: "club_6")
                playerScore += 6
        case 7:
                dealName.image = UIImage(named: "club_7")
                playerScore += 7
        case 8:
                dealName.image = UIImage(named: "club_8")
                playerScore += 8
        case 9:
                dealName.image = UIImage(named: "club_9")
                playerScore += 9
        case 10:
                dealName.image = UIImage(named: "club_10")
                playerScore += 10
        case 11:
                dealName.image = UIImage(named: "club_king")
                playerScore += 10
        case 12:
                dealName.image = UIImage(named: "club_queen")
                playerScore += 10
        case 13:
                dealName.image = UIImage(named: "club_jack")
                playerScore += 10
        case 14:
                dealName.image = UIImage(named: "diamond_1")
                playerScore += 1
        case 15:
                dealName.image = UIImage(named: "diamond_2")
                playerScore += 2
        case 16:
                dealName.image = UIImage(named: "diamond_3")
                playerScore += 3
        case 17:
                dealName.image = UIImage(named: "diamond_4")
                playerScore += 4
        case 18:
                dealName.image = UIImage(named: "diamond_5")
                playerScore += 5
        case 19:
                dealName.image = UIImage(named: "diamond_6")
                playerScore += 6
        case 20:
                dealName.image = UIImage(named: "diamond_7")
                playerScore += 7
        case 21:
                dealName.image = UIImage(named: "diamond_8")
                playerScore += 8
        case 22:
                dealName.image = UIImage(named: "diamond_9")
                playerScore += 9
        case 23:
                dealName.image = UIImage(named: "diamond_10")
                playerScore += 10
        case 24:
                dealName.image = UIImage(named: "diamond_king")
                playerScore += 10
        case 25:
                dealName.image = UIImage(named: "diamond_queen")
                playerScore += 10
        case 26:
                dealName.image = UIImage(named: "diamond_jack")
                playerScore += 10
        case 27:
                dealName.image = UIImage(named: "heart_1")
                playerScore += 1
        case 28:
                dealName.image = UIImage(named: "heart_2")
                playerScore += 2
        case 29:
                dealName.image = UIImage(named: "heart_3")
                playerScore += 3
        case 30:
                dealName.image = UIImage(named: "heart_4")
                playerScore += 4
        case 31:
                dealName.image = UIImage(named: "heart_5")
                playerScore += 5
        case 32:
                dealName.image = UIImage(named: "heart_6")
                playerScore += 6
        case 33:
                dealName.image = UIImage(named: "heart_7")
                playerScore += 7
        case 34:
                dealName.image = UIImage(named: "heart_8")
                playerScore += 8
        case 35:
                dealName.image = UIImage(named: "heart_9")
                playerScore += 9
        case 36:
                dealName.image = UIImage(named: "heart_10")
                playerScore += 10
        case 37:
                dealName.image = UIImage(named: "heart_king")
                playerScore += 10
        case 38:
                dealName.image = UIImage(named: "heart_queen")
                playerScore += 10
        case 39:
                dealName.image = UIImage(named: "heart_jack")
                playerScore += 10
        case 40:
                dealName.image = UIImage(named: "spade_1")
                playerScore += 1
        case 41:
                dealName.image = UIImage(named: "spade_2")
                playerScore += 2
        case 42:
                dealName.image = UIImage(named: "spade_3")
                playerScore += 3
        case 43:
                dealName.image = UIImage(named: "spade_4")
                playerScore += 4
        case 44:
                dealName.image = UIImage(named: "spade_5")
                playerScore += 5
        case 45:
                dealName.image = UIImage(named: "spade_6")
                playerScore += 6
        case 46:
                dealName.image = UIImage(named: "spade_7")
                playerScore += 7
        case 47:
                dealName.image = UIImage(named: "spade_8")
                playerScore += 8
        case 48:
                dealName.image = UIImage(named: "spade_9")
                playerScore += 9
        case 49:
                dealName.image = UIImage(named: "spade_10")
                playerScore += 10
        case 50:
                dealName.image = UIImage(named: "spade_king")
                playerScore += 10
        case 51:
                dealName.image = UIImage(named: "spade_queen")
                playerScore += 10
        case 52:
                dealName.image = UIImage(named: "spade_jack")
                playerScore += 10
            
        default:
            PlayerCard1.image = UIImage(named: "cardBack")
        }
        
        PlayerScoreLbl.text = "Your score is \(playerScore)"
        if (playerScore > 21) {
            WinnerLbl.text = "Bust, you lose"
            chips -= 50
        }
    }
    func DealPlayerCard2(deal1: Int, dealName: UIImageView) {
        switch deal1 {
        case 1:
                dealName.image = UIImage(named: "club_1")
                dealerScore += 1
        case 2:
                dealName.image = UIImage(named: "club_2")
                dealerScore += 2
        case 3:
                dealName.image = UIImage(named: "club_3")
                dealerScore += 3
        case 4:
                dealName.image = UIImage(named: "club_4")
                dealerScore += 4
        case 5:
                dealName.image = UIImage(named: "club_5")
                dealerScore += 5
        case 6:
                dealName.image = UIImage(named: "club_6")
                dealerScore += 6
        case 7:
                dealName.image = UIImage(named: "club_7")
                dealerScore += 7
        case 8:
                dealName.image = UIImage(named: "club_8")
                dealerScore += 8
        case 9:
                dealName.image = UIImage(named: "club_9")
                dealerScore += 9
        case 10:
                dealName.image = UIImage(named: "club_10")
                dealerScore += 10
        case 11:
                dealName.image = UIImage(named: "club_king")
                dealerScore += 10
        case 12:
                dealName.image = UIImage(named: "club_queen")
                dealerScore += 10
        case 13:
                dealName.image = UIImage(named: "club_jack")
                dealerScore += 10
        case 14:
                dealName.image = UIImage(named: "diamond_1")
                dealerScore += 1
        case 15:
                dealName.image = UIImage(named: "diamond_2")
                dealerScore += 2
        case 16:
                dealName.image = UIImage(named: "diamond_3")
                dealerScore += 3
        case 17:
                dealName.image = UIImage(named: "diamond_4")
                dealerScore += 4
        case 18:
                dealName.image = UIImage(named: "diamond_5")
                dealerScore += 5
        case 19:
                dealName.image = UIImage(named: "diamond_6")
                dealerScore += 6
        case 20:
                dealName.image = UIImage(named: "diamond_7")
                dealerScore += 7
        case 21:
                dealName.image = UIImage(named: "diamond_8")
                dealerScore += 8
        case 22:
                dealName.image = UIImage(named: "diamond_9")
                dealerScore += 9
        case 23:
                dealName.image = UIImage(named: "diamond_10")
                dealerScore += 10
        case 24:
                dealName.image = UIImage(named: "diamond_king")
                dealerScore += 10
        case 25:
                dealName.image = UIImage(named: "diamond_queen")
                dealerScore += 10
        case 26:
                dealName.image = UIImage(named: "diamond_jack")
                dealerScore += 10
        case 27:
                dealName.image = UIImage(named: "heart_1")
                dealerScore += 1
        case 28:
                dealName.image = UIImage(named: "heart_2")
                dealerScore += 2
        case 29:
                dealName.image = UIImage(named: "heart_3")
                dealerScore += 3
        case 30:
                dealName.image = UIImage(named: "heart_4")
                dealerScore += 4
        case 31:
                dealName.image = UIImage(named: "heart_5")
                dealerScore += 5
        case 32:
                dealName.image = UIImage(named: "heart_6")
                dealerScore += 6
        case 33:
                dealName.image = UIImage(named: "heart_7")
                dealerScore += 7
        case 34:
                dealName.image = UIImage(named: "heart_8")
                dealerScore += 8
        case 35:
                dealName.image = UIImage(named: "heart_9")
                dealerScore += 9
        case 36:
                dealName.image = UIImage(named: "heart_10")
                dealerScore += 10
        case 37:
                dealName.image = UIImage(named: "heart_king")
                dealerScore += 10
        case 38:
                dealName.image = UIImage(named: "heart_queen")
                dealerScore += 10
        case 39:
                dealName.image = UIImage(named: "heart_jack")
                dealerScore += 10
        case 40:
                dealName.image = UIImage(named: "spade_1")
                dealerScore += 1
        case 41:
                dealName.image = UIImage(named: "spade_2")
                dealerScore += 2
        case 42:
                dealName.image = UIImage(named: "spade_3")
                dealerScore += 3
        case 43:
                dealName.image = UIImage(named: "spade_4")
                dealerScore += 4
        case 44:
                dealName.image = UIImage(named: "spade_5")
                dealerScore += 5
        case 45:
                dealName.image = UIImage(named: "spade_6")
                dealerScore += 6
        case 46:
                dealName.image = UIImage(named: "spade_7")
                dealerScore += 7
        case 47:
                dealName.image = UIImage(named: "spade_8")
                dealerScore += 8
        case 48:
                dealName.image = UIImage(named: "spade_9")
                dealerScore += 9
        case 49:
                dealName.image = UIImage(named: "spade_10")
                dealerScore += 10
        case 50:
                dealName.image = UIImage(named: "spade_king")
                dealerScore += 10
        case 51:
                dealName.image = UIImage(named: "spade_queen")
                dealerScore += 10
        case 52:
                dealName.image = UIImage(named: "spade_jack")
                dealerScore += 10
            
        default:
            DealerCard1.image = UIImage(named: "cardBack")
        }
        
        DealerScoreLbl.text = "Score: \(dealerScore)"
        if (dealerScore > 21) {
            DealerScoreLbl.text = "Bust, game over"
        }
    }
    
    @IBAction func StayClick(_ sender: UIButton) {
        HitBtn.isHidden = true
        //make an array of the dealers card images
        let cardIndex = [DealerCard3, DealerCard4, DealerCard5, DealerCard6]
        let i = 0
        var x = 0
        //iterate over array vals after players stopped position
        //pass the value recieved each time to the function with a new card starting from 0 through the end
        while i < playerArr.count {
            let pNextCard1 = playerArr.index(after: counter1)
            DealPlayerCard2(deal1: playerArr[pNextCard1], dealName: cardIndex[x] ?? DealerCard1)
            x += 1
            counter1 += 1
            dealerScore += 1
            if (dealerScore > 21) {
                WinnerLbl.text = "You win!"
                chips += 50
                break
            } else if (dealerScore >= playerScore && dealerScore < 22) {
                WinnerLbl.text = "Dealer wins"
                chips -= 50
                break
            }
            
        }
    }
}
