//
//  ViewController.swift
//  fitupios
//
//  Created by Anthony Sherrill on 23.02.22.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "User", in: context)
        
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
        newUser.setValue("jiGg4", forKey: "username")
        newUser.setValue("Pass123", forKey: "password")
        newUser.setValue(37, forKey: "age")
        
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
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

