//
//  ViewController.swift
//  closure task
//
//  Created by AHSAN on 13/02/2020.
//  Copyright © 2020 AHSAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var namelbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func formButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! secondViewController
        
        vc.completion = {  hell in
            self.namelbl.text = (hell["name"] as? String)
        }
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
}

