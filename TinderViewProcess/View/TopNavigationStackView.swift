//
//  TopNavigationStackView.swift
//  TinderViewProcess
//
//  Created by 矢守叡 on 2020/01/13.
//  Copyright © 2020 yamolean. All rights reserved.
//

import UIKit

final class TopNavigationStackView: UIStackView {
    
    private let settingsButton = UIButton(type: .system)
    private let messageButton = UIButton(type: .system)
    private let fireImageView = UIImageView(image: #imageLiteral(resourceName: "yamolean"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        fireImageView.contentMode = .scaleAspectFit
        
        settingsButton.setImage(#imageLiteral(resourceName: "yamolean").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "yamolean").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [settingsButton, UIView(), fireImageView, UIView(), messageButton].forEach { (v) in
            addArrangedSubview(v)
        }
        
        distribution = .equalCentering
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }

}

