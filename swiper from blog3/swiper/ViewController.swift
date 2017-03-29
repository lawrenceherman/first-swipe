//
//  ViewController.swift
//  swiper
//
//  Created by Lawrence Herman on 3/14/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ionianLocator: Int = 0
    var dorianLocator: Int = 2
    var phrygianLocator: Int = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstFret.backgroundColor = UIColor.red
        thirdFret.backgroundColor = UIColor.black
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBOutlet weak var firstFret: UIView!
   
    @IBOutlet weak var secondFret: UIView!
    
    @IBOutlet weak var thirdFret: UIView!
    
    @IBOutlet weak var fourthFret: UIView!
   
    @IBOutlet weak var fifthFret: UIView!
    
    @IBOutlet weak var ionianLabel: UILabel!
    
    @IBOutlet weak var dorianLabel: UILabel!
    
    @IBOutlet weak var phrygianLabel: UILabel!
    
    func allFretsToWhite () {
        firstFret.backgroundColor = UIColor.white
        secondFret.backgroundColor = UIColor.white
        thirdFret.backgroundColor = UIColor.white
        fourthFret.backgroundColor = UIColor.white
        fifthFret.backgroundColor = UIColor.white
    }
    
    func selectIonian () {
        
        switch ionianLocator {
        case 0:
            firstFret.backgroundColor = UIColor.red
        case 1:
            secondFret.backgroundColor = UIColor.red
        case 2:
            thirdFret.backgroundColor = UIColor.red
        case 3:
            fourthFret.backgroundColor = UIColor.red
        case 4:
            fifthFret.backgroundColor = UIColor.red
        default:
            firstFret.backgroundColor = UIColor.red
        }
    }
    
    func selectDorian () {
        
        switch dorianLocator {
        case 0:
            firstFret.backgroundColor = UIColor.black
        case 1:
            secondFret.backgroundColor = UIColor.black
        case 2:
            thirdFret.backgroundColor = UIColor.black
        case 3:
            fourthFret.backgroundColor = UIColor.black
        case 4:
            fifthFret.backgroundColor = UIColor.black
        default:
            firstFret.backgroundColor = UIColor.black
        }
    }
    
    func selectPhrygian() {
        
        switch phrygianLocator {
        case 0:
            firstFret.backgroundColor = UIColor.black
        case 1:
            secondFret.backgroundColor = UIColor.black
        case 2:
            thirdFret.backgroundColor = UIColor.black
        case 3:
            fourthFret.backgroundColor = UIColor.black
        case 4:
            fifthFret.backgroundColor = UIColor.black
        default:
            firstFret.backgroundColor = UIColor.black
        }
    }
    
    func selectText () {
        
        switch ionianLocator {
        case 0:
            ionianLabel.text = "C"
            dorianLabel.text = "D"
            phrygianLabel.text = "E"
        case 1:
            ionianLabel.text = "Db"
            dorianLabel.text = "Eb"
            phrygianLabel.text = "F"
        case 2:
            ionianLabel.text = "D"
            dorianLabel.text = "E"
            phrygianLabel.text = "F#"
        case 3:
            ionianLabel.text = "Eb"
            dorianLabel.text = "F"
            phrygianLabel.text = "G"
        case 4:
            ionianLabel.text = "E"
            dorianLabel.text = "F#"
            phrygianLabel.text = "G#"
        default:
            ionianLabel.text = ""
            dorianLabel.text = ""
            phrygianLabel.text = ""
        }
    }
    
    func selectDorianText () {
        
        switch dorianLocator {
        case 0:
            ionianLabel.text = "C"
        case 1:
            ionianLabel.text = "Db"
        case 2:
            ionianLabel.text = "D"
        case 3:
            ionianLabel.text = "Eb"
        case 4:
            ionianLabel.text = "E"
        default:
            ionianLabel.text = ""
        }
    }

    func setLocatorHigher () {
        
        if ionianLocator == 4 {
            ionianLocator = 0
        } else {
            ionianLocator += 1
        }
        
        if dorianLocator == 4 {
            dorianLocator = 0
        } else {
            dorianLocator += 1
        }
        
        if phrygianLocator == 4 {
            phrygianLocator = 0
        } else {
            phrygianLocator += 1
        }
      
    }
    
    func setLocatorLower () {
        
        if ionianLocator == 0 {
            ionianLocator = 4
        } else {
            ionianLocator -= 1
        }
        
        if dorianLocator == 0 {
            dorianLocator = 4
        } else {
            dorianLocator -= 1
        }
        
        if phrygianLocator == 0 {
            phrygianLocator = 4
        } else  {
            phrygianLocator -= 1
        }
    }


    func moveFretHigher() {
        
        allFretsToWhite()
        setLocatorHigher()
        
        selectText()
        selectIonian()
        selectDorian()
        selectPhrygian()
    }
    
    func moveFretLower() {
        
        allFretsToWhite()
        setLocatorLower()
        
        selectText()
        selectIonian()
        selectDorian()
        selectPhrygian()
    }

    @IBAction func leftSwipe(_ sender: UISwipeGestureRecognizer) {
        print("left swipe")
        moveFretLower()
    }
    
    
    @IBAction func rightSwipe(_ sender: UISwipeGestureRecognizer) {
        print("right swipe")
        moveFretHigher()
    }

}

