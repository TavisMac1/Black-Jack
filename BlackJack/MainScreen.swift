//
//  MainScreen.swift
//  BlackJack
//
//  Created by tavmac on 2022-03-21.
//

import UIKit

class MainScreen: UIViewController {
    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var MainLbl: UILabel!
    @IBOutlet weak var ErrLbl: UILabel!
    let core = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func GiveMeName(_ sender: UIButton) {
        if (UserName.text != nil && UserName.text != "") {
            MainLbl.text = "Thanks! you can play now"
            let newVal = Stats(context: core) //grab the core data object
            newVal.user_name = UserName.text //assign data to the entity
            do { //save data
               try core.save()
            } catch {
                ErrLbl.text = "There has been an error, restart app"
            }
        } else {
            MainLbl.text = "Enter a valid name"
        }
    }
    

}
