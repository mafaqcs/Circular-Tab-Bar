//
//  CustomTabBarController.swift
//  Custom Tab Bar
//
//  Created by M Afaq on 22/09/2020.
//  Copyright © 2020 M Afaq. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupMiddleButton()
    }

    func setupMiddleButton() {
        let monitorBtn = UIButton()
        
        monitorBtn.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(monitorBtn)
        
        NSLayoutConstraint.activate([
        monitorBtn.widthAnchor.constraint(equalToConstant: 56.0),
        monitorBtn.heightAnchor.constraint(equalToConstant: 56.0)
        ])
        
        let height = tabBar.frame.size.height
        
        let constraintForCenter = NSLayoutConstraint(item: monitorBtn, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0)
        
        let constraintForBottom = NSLayoutConstraint(item: monitorBtn, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -(height - 35))
        
        constraintForCenter.isActive = true
        constraintForBottom.isActive = true
        
        monitorBtn.setImage(UIImage(named: "Monitoring"), for: .normal)
        monitorBtn.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)

        monitorBtn.backgroundColor = UIColor(hexString: "1E5A96", alpha: 1.0)
        monitorBtn.layer.cornerRadius = 28
    }

    // MARK: - Actions

    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 1
    }

}
