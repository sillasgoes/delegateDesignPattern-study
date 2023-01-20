//
//  ViewController.swift
//  delegateDesignPattern
//
//  Created by Sillas Santos on 20/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    let titleLabel = UILabel()
    let imageProduct = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addView()
        setupView()
        addConstraint()
    }
    
    func addView() {
        view.addSubview(titleLabel)
        view.addSubview(imageProduct)
    }
    
    func setupView(){
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Maça"
        
        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "maca")
    }
    
    func addConstraint(){
        
        NSLayoutConstraint.activate([
            imageProduct.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.width / 100 * 10),
            imageProduct.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.height / 100 * 60)),
            imageProduct.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width / 100 * 10),
            imageProduct.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.frame.width) / 100 * 10),
            
            titleLabel.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: view.frame.width / 100 * 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
