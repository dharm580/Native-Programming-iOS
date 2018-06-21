//
//  AddCourseworkViewController.swift
//  Native Programming Coursework 2 - Coursework Management Tool
//
//  Created by dharm on 21/05/2017.
//  Copyright © 2017 dharm. All rights reserved.
//

import UIKit

class AddCourseworkViewController: UIViewController {

    @IBOutlet weak var textfieldAddcoursework: UITextField!
    @IBOutlet weak var textviewNotes: UITextView!
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        if self.textfieldAddcoursework.text != "" {
        
        let newCoursework = Coursework(context: context)
        newCoursework.name = self.textfieldAddcoursework.text
        newCoursework.notes = self.textviewNotes.text
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
        else{
            //Alert
            let alert = UIAlertController(title: "Missing Coursework name", message: "Please enter a Coursework", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(OKAction)
            self.present(alert, animated: true)
        }
    }
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
