//
//  SecurityViewController.swift
//  ClassWorkOne
//
//  Created by WEMA on 09/01/2024.
//

import UIKit

class SecurityViewController: UIViewController {
    @IBOutlet weak var nextLabel: UILabel!
    @IBOutlet weak var prevLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        let next = UITapGestureRecognizer(target: self, action: #selector(nextFunction))
        nextLabel.isUserInteractionEnabled = true
        nextLabel.addGestureRecognizer(next)
        
        let prev = UITapGestureRecognizer(target: self, action: #selector(prevFunction))
        prevLabel.isUserInteractionEnabled = true
        prevLabel.addGestureRecognizer(prev)

    }
    
    @objc func nextFunction(){
        let deliveryViewController = DeliveryViewController()
        navigationController?.pushViewController(deliveryViewController, animated: true)
    }
    
    @objc func prevFunction(){
        navigationController?.popViewController(animated: true)
    }


}
