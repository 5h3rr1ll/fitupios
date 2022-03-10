//
//  ViewController.swift
//  fitupios
//
//  Created by Anthony Sherrill on 23.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var alarmTime = Date()
    
    @IBOutlet weak var timepicker: UIDatePicker!
    
    @IBAction func timepickerchanged(_ sender: UIDatePicker) {
        alarmTime = timepicker.date
        print("alarmTime:", alarmTime)
    }
    @IBOutlet weak var setAlarmTimeButton: UIButton!
    
    @IBAction func setAlarmTime(_ sender: UIButton) {
        print("Pushed:", timepicker!)
    }
}

