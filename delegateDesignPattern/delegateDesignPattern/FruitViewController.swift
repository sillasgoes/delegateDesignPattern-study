//
//  FruitViewController.swift
//  delegateDesignPattern
//
//  Created by Sillas Santos on 20/01/23.
//

import Foundation
import UIKit

class FruitViewController: UIViewController {
    
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addView()
        setupView()
        addConstraint()
    }
    
    
    func addView() {
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
    }
    
    func setupView() {
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        
        button1.setTitle("Jaca", for: .normal)
        button1.backgroundColor = .blue
        button1.tintColor = .black
        
        button2.setTitle("Maçã", for: .normal)
        button2.backgroundColor = .blue
        button2.tintColor = .black
        
        button3.setTitle("Melancia", for: .normal)
        button3.backgroundColor = .blue
        button3.tintColor = .black
    }
    
    func addConstraint() {
        
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height / 100 * 10),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.height / 100 * 10),
            button1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.frame.height / 100 * 10)),
            
            button2.topAnchor.constraint(equalTo: button1.topAnchor, constant: view.frame.height / 100 * 10),
            button2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.height / 100 * 10),
            button2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.frame.height / 100 * 10)),
            
            button3.topAnchor.constraint(equalTo: button2.topAnchor, constant: view.frame.height / 100 * 10),
            button3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.height / 100 * 10),
            button3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.frame.height / 100 * 10)),
            
        ])
    }

}
