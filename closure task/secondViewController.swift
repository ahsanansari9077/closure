//
//  secondViewController.swift
//  closure task
//
//  Created by AHSAN on 13/02/2020.
//  Copyright © 2020 AHSAN. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    typealias completionHandler = ([String: Any]) -> Void
    
    
    var function = { (number1 : String) -> String in
        return number1
        
    }
    
    
    
    @IBOutlet weak var nametxt: UITextField!
    var completion : completionHandler?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func saveButton(_ sender: Any) {
        guard let name = nametxt.text else {
            return
        }
        let dict = ["name" : name]
        
 
        
        completion!(dict)
        
        
    }
    

}
