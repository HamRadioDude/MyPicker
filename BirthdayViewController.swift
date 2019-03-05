//
//  BirthdayViewController.swift
//  MyPicker
//
//  Created by student on 3/4/19.
//  Copyright © 2019 Sean Klechak. All rights reserved.
//

import UIKit
let thisdate = NSDate()

class BirthdayViewController: UIViewController {

    @IBOutlet weak var birthdayPicker: UIDatePicker!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//    pickdate.setDate(date as Date, animated: false)

        // Do any additional setup after loading the view.
    }


    @IBAction func onButtonPressed(_ sender: Any) {
    
        
    let pickdate = birthdayPicker.date
    let diffDay = Calendar.current.dateComponents([.day], from: thisdate as Date, to: pickdate as Date).day
        let daystoString = "\(String(describing: diffDay!))"
        
        if diffDay! < 0 {
            self.counterLabel.text = "You've already had a birthday this year!"
        } else if diffDay! > 0  {
        
            self.counterLabel.text = (daystoString  + " days until your birthday!")
            print(daystoString)
            //            var stringValue = "\(x)"

        } else if diffDay! == 0 {
            self.counterLabel.text = "Happy Birthday!"
        }

    
    }
    
    
}
