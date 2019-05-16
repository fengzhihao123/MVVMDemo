//
//  PersonViewModel.swift
//  MVVMDemo
//
//  Created by fzh on 2019/5/16.
//  Copyright © 2019 fzh.test.com. All rights reserved.
//

import UIKit

class PersonViewModel {
    let person: Person
    
    var name: String {
        return person.name
    }
    
    var image: String {
        return person.image
    }
    
    var registerTimeStr: String {
        let date = Date(timeIntervalSince1970: person.registerTimeStamp)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        let strDate = dateFormatter.string(from: date)
        return strDate
    }
    
    init(_ person: Person) {
        self.person = person
    }
}

extension PersonViewModel {
    func configurate(_ personView: PersonView) {
        personView.imageView.image = UIImage(named: image)
        personView.nameLabel.text = name
        personView.registerTimeLabel.text = registerTimeStr
    }
}
