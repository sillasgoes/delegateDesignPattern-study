//
//  FruitViewController.swift
//  delegateDesignPattern
//
//  Created by Sillas Santos on 20/01/23.
//

import Foundation
import UIKit

protocol FruitInfo: AnyObject {
    func didTapButton(title: String, image: String)
}

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
    
    weak var delegate: FruitInfo?
    
    func addView() {
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
    }
    
    func setupView() {
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        button1.configuration = .configuredButton(title: "Maçã")
        button1.addTarget(self, action: #selector(tapButton1(sender:)), for: .touchUpInside)
        
        button2.configuration = .configuredButton(title: "Jaca")
        button2.addTarget(self, action: #selector(tapButton2(sender:)), for: .touchUpInside)
        
        button3.configuration = .configuredButton(title: "Melancia")
        button3.addTarget(self, action: #selector(tapButton3(sender:)), for: .touchUpInside)
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
    
    @objc func tapButton1(sender: AnyObject) {
        delegate?.didTapButton(title: "Maçã", image: "maca")
    }
    
    @objc func tapButton2(sender: AnyObject) {
        delegate?.didTapButton(title: "Jaca", image: "jaca")
    }
    
    @objc func tapButton3(sender: AnyObject) {
        delegate?.didTapButton(title: "Melancia", image: "melancia")
    }

}
