//
//  File.swift
//  studentsManager
//
//  Created by admin on 4/25/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class Student: NSObject {
    var name: String
    var phoneNumber: String
    
    init?(name: String, phoneNumber: String) {
        guard name != "" else {return nil}
        guard phoneNumber.characters.count > 10 else {return nil}
        self.name = name
        self.phoneNumber = phoneNumber
    }
}
