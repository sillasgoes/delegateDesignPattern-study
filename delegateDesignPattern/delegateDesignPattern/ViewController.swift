//
//  ViewController.swift
//  delegateDesignPattern
//
//  Created by Sillas Santos on 20/01/23.
//

import UIKit

class ViewController: UIViewController, FruitInfo {
    
    
    let titleLabel = UILabel()
    let imageProduct = UIImageView()
    let button = UIButton()
    
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
        view.addSubview(button)
    }
    
    func setupView(){
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Maçã"
        
        imageProduct.translatesAutoresizingMaskIntoConstraints = false
        imageProduct.image = UIImage(named: "maca")
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .configuredButton(title: "Escolher")
        button.addTarget(self, action: #selector(presentModal(sender:)), for: .touchUpInside)
        
    }
    
    func addConstraint(){
        NSLayoutConstraint.activate([
            imageProduct.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.width / 100 * 10),
            imageProduct.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.height / 100 * 60)),
            imageProduct.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width / 100 * 10),
            imageProduct.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.frame.width) / 100 * 10),
            
            titleLabel.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: view.frame.width / 100 * 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: view.frame.height / 100 * 30),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.frame.width / 100 * 10),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.frame.width / 100 * 10))
        ])
    }
    
    func didTapButton(title: String, image: String) {
        titleLabel.text = title
        imageProduct.image = UIImage(named: image)
    }
    
    @objc func presentModal(sender: AnyObject){
        let vc = FruitViewController()
        vc.delegate = self
        vc.modalPresentationStyle = .pageSheet
        vc.sheetPresentationController?.detents=[.medium()]
        vc.sheetPresentationController?.prefersGrabberVisible=true
        present (vc, animated: true)
    }
    
}
