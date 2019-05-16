//
//  PersonView.swift
//  MVVMDemo
//
//  Created by fzh on 2019/5/16.
//  Copyright © 2019 fzh.test.com. All rights reserved.
//

import UIKit

class PersonView: UIView {
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let registerTimeLabel = UILabel()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.brown
        
        imageView.frame = CGRect(x: (frame.width - 50)/2, y: 10, width: 50, height: 50)
        addSubview(imageView)
        
        nameLabel.frame = CGRect(x: 0, y: 80, width: frame.width, height: 20)
        nameLabel.textAlignment = .center
        addSubview(nameLabel)
        
        registerTimeLabel.frame = CGRect(x: 0, y: 110, width: frame.width, height: 16)
        registerTimeLabel.font = UIFont.systemFont(ofSize: 14)
        registerTimeLabel.textColor = UIColor.lightGray
        registerTimeLabel.textAlignment = .center
        addSubview(registerTimeLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
