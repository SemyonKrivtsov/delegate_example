//
//  ViewController.swift
//  testVC
//
//  Created by Семён Кривцов on 22.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitSegment: UISegmentedControl!
    
    weak var delegate: UpdateDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func transitionPressed(_ sender: Any) {
        // MARK: - via Delegate
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "VC2") as! SecondVC
//        delegate?.update(fruit: fruitSegment.titleForSegment(at: fruitSegment.selectedSegmentIndex)!)
    
// MARK: - via property
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "VC2") as! SecondVC
        
        viewController.fruit =  fruitSegment.titleForSegment(at: fruitSegment.selectedSegmentIndex)
        present(viewController, animated: true, completion: nil)
    }
}

