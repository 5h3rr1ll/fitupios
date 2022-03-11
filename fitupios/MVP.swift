//
//  MVP.swift
//  fitupios
//
//  Created by Anthony Sherrill on 10.03.22.
//

import UIKit
import CoreData

class MVP: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func createAEntry() {
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
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request.returnsObjectsAsFaults = false
        
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "username") as! String)
            }
        } catch {
            print("Fetch Request Failed")
        }
    }
    
    @IBOutlet weak var wokeUpSwitch: UISwitch!
    
    @IBOutlet weak var workedOutSwitch: UISwitch!
    
    @IBAction func workedOutOnChange(_ sender: Any) {
        print("⏰ Worked Out")
        createAEntry()
    }
    @IBAction func wokeUpOnChange(_ sender: Any) {
        print("💪 Woke Up!")
    }
    
    
}
