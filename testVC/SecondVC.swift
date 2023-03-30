//
//  SecondVC.swift
//  testVC
//
//  Created by Семён Кривцов on 22.01.2022.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    var fruit: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainLabel.text = self.fruit
    }
    
        
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
