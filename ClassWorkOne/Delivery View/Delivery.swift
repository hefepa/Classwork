//
//  Delivery.swift
//  ClassWorkOne
//
//  Created by WEMA on 09/01/2024.
//

import Foundation
import UIKit

class DeliveryViewController: UIViewController {
    
    //@IBOutlet weak var prevLabel: UILabel!

    let deliveryLabel = UILabel()
    let deliverySubLabel = UILabel()
    let deliveryImage = UIImageView()
    let deliveryPrevLabel = UILabel()
    let deliveryNextLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.backgroundColor = .systemBackground
        deliveryConstraint()
        deliverySubConstraint()
        imageConstraint()
        prevConstraint()
        nextConstraint()
        
        let previous = UITapGestureRecognizer(target: self, action: #selector(prevFunction))
        deliveryPrevLabel.isUserInteractionEnabled = true
        deliveryPrevLabel.addGestureRecognizer(previous)
    }
    
    @objc func prevFunction(){
        navigationController?.popViewController(animated: true)
    }
    
    
    func deliveryConstraint(){
        view.addSubview(deliveryLabel)
        deliveryLabel.translatesAutoresizingMaskIntoConstraints = false
        deliveryLabel.textAlignment = .center
        deliveryLabel.text = "Delivery"
        deliveryLabel.font = .systemFont(ofSize: 45, weight: .bold)
        
        NSLayoutConstraint.activate([
            deliveryLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            deliveryLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 60),
            deliveryLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -60),
        ])    }
    
    func deliverySubConstraint(){
        view.addSubview(deliverySubLabel)
        deliverySubLabel.translatesAutoresizingMaskIntoConstraints = false
        deliverySubLabel.font = .systemFont(ofSize: 21, weight: .light)
        deliverySubLabel.text = "Enjoy your order in one hour"
        deliverySubLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            deliverySubLabel.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 27),
            deliverySubLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            deliverySubLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func imageConstraint(){
        view.addSubview(deliveryImage)
        deliveryImage.translatesAutoresizingMaskIntoConstraints = false
        deliveryImage.image = UIImage(named: "delivery")
        //.center = .zero
        deliveryImage.contentMode = .scaleToFill
        
        NSLayoutConstraint.activate([
            deliveryImage.topAnchor.constraint(equalTo: deliverySubLabel.bottomAnchor, constant: 50),
            deliveryImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 76),
            deliveryImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -76),
        ])
    }
    
    func prevConstraint(){
        view.addSubview(deliveryPrevLabel)
        deliveryPrevLabel.translatesAutoresizingMaskIntoConstraints = false
        deliveryPrevLabel.text = "Prev"
        deliveryPrevLabel.font = .systemFont(ofSize: 21, weight: .bold)
        
        NSLayoutConstraint.activate([
            deliveryPrevLabel.topAnchor.constraint(equalTo: deliveryImage.bottomAnchor, constant: 50),
            deliveryPrevLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            deliveryPrevLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
        
       
    }
    
    func nextConstraint(){
        view.addSubview(deliveryNextLabel)
        deliveryNextLabel.translatesAutoresizingMaskIntoConstraints = false
        deliveryNextLabel.text = "Next"
        deliveryNextLabel.font = .systemFont(ofSize: 20, weight: .bold)
        
        NSLayoutConstraint.activate([
            deliveryNextLabel.topAnchor.constraint(equalTo: deliveryImage.bottomAnchor, constant: 50),
            deliveryNextLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            deliveryNextLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
   
}
