//
//  MVP.swift
//  fitupios
//
//  Created by Anthony Sherrill on 10.03.22.
//

import UIKit

class MVP: UIViewController {
    
    @IBOutlet weak var wokeUpSwitch: UISwitch!
    
    @IBOutlet weak var workedOutSwitch: UISwitch!
    
    @IBAction func workedOutOnChange(_ sender: Any) {
        print("Worked Out")
    }
    @IBAction func wokeUpOnChange(_ sender: Any) {
        print("Woke Up!")
    }
}
