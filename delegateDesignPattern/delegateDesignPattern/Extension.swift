//
//  Extension.swift
//  delegateDesignPattern
//
//  Created by Sillas Santos on 21/01/23.
//

import Foundation
import UIKit


extension UIButton.Configuration {
    static func configuredButton(title: String) -> UIButton.Configuration {
        var configuration: UIButton.Configuration = .filled()
        configuration.title = title
        configuration.baseBackgroundColor = .systemBlue
        configuration.cornerStyle = .medium
        return configuration
    }
}
