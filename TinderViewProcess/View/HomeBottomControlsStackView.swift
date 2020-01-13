//
//  HomeBottomControlsStackView.swift
//  TinderViewProcess
//
//  Created by 矢守叡 on 2020/01/13.
//  Copyright © 2020 yamolean. All rights reserved.
//

import UIKit

final class HomeBottomControlsStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let subviews = [#imageLiteral(resourceName: "yamolean"), #imageLiteral(resourceName: "yamolean"), #imageLiteral(resourceName: "yamolean"), #imageLiteral(resourceName: "yamolean"), #imageLiteral(resourceName: "yamolean")].map { (img) -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }
        
        subviews.forEach { (v) in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
