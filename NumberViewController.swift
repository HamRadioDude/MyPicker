//
//  NumberViewController.swift
//  MyPicker
//
//  Created by student on 3/4/19.
//  Copyright © 2019 Sean Klechak. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var singlepicker: UIPickerView!
    private let numbers = [1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func onButtonPressed(_ sender: Any) {
        let row = singlepicker.selectedRow(inComponent: 0)
        let userGuess = numbers[row]
        
        let computerRando = Int.random(in: 0 ... 10)
        
        
        if userGuess == computerRando   {
            winnerLabel.text = " YOU GOT IT! GOOD JOB"
            
        }else{
            winnerLabel.text = "Try Again!"
        }
        
    }
    // Mark: -
    // MARK: Picker Data Source Methods
    
    func  pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count
    }
    
    // MARK: Picker Delegate Methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(numbers[row])
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1    }
    
}
