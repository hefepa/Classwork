//
//  HomeViewController.swift
//  ClassWorkOne
//
//  Created by WEMA on 09/01/2024.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeImgView: UIImageView!
    @IBOutlet weak var nextLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let next = UITapGestureRecognizer(target: self, action: #selector(nextFunction))
        nextLabel.isUserInteractionEnabled = true
        nextLabel.addGestureRecognizer(next)
        
        

        // Do any additional setup after loading the view.
    }
    @objc func nextFunction(){
        let securityViewController = SecurityViewController(nibName: "SecurityViewController", bundle: nil)
        navigationController?.pushViewController(securityViewController, animated: true)
        
    }


   

}
