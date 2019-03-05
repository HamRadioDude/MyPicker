//
//  LotteryViewController.swift
//  MyPicker
//
//  Created by student on 3/4/19.
//  Copyright © 2019 Sean Klechak. All rights reserved.
//

import UIKit

class LotteryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var winningNums:[Int]=[]
    
    var nums = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69]
    
    var randNum:Int = 0
    
    @IBOutlet weak var numbersLabel: UILabel!
    @IBOutlet weak var spin: UIPickerView!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onButtonPress(_ sender: Any) {
//        let powerballNum = Int.random(in: 0 ... 26)
        numbersLabel.text = ""
        
        
        var counter: Int = 1
        while counter < 6 {
            
            let arrayKey = Int(arc4random_uniform(UInt32(nums.count)))
            
            randNum = nums[arrayKey]
            nums.remove(at: randNum)
            
            winningNums.append(randNum)
            counter = counter + 1
            
             }
        
          self.numbersLabel.text = "\(winningNums) +  \(randNum)"
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return  6
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nums.count    }
    
    //MARK:-
    //MARK: Picker Delegates
    
    private func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> Int? {
        return winningNums[row]
    }
    
}
