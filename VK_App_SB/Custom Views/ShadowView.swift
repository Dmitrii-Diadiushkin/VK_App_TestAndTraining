//
//  ShadowView.swift
//  VK_App_SB
//
//  Created by Dmitrii Diadiushkin on 12.07.2020.
//  Copyright © 2020 Dmitrii Diadiushkin. All rights reserved.
//

import UIKit

//@IBDesignable отключил, ибо затормаживает Storyboard
class ShadowView: UIView {
    
    var avatarImage = UIImageView()
    @IBInspectable var shadowColor: UIColor = .black{
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    @IBInspectable var shadowOpacity: Float = 0.6 {
        didSet {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    @IBInspectable var shadowRadius: CGFloat = 5 {
        didSet {
            self.layer.shadowRadius = shadowRadius
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    
    func setUpView(){
        
        avatarImage.frame = self.layer.bounds
        avatarImage.clipsToBounds = true
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        
        self.layer.cornerRadius = avatarImage.frame.width / 2
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = CGSize.zero
        self.addSubview(avatarImage)
    }
}