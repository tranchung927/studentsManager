//
//  DataServices.swift
//  studentsManager
//
//  Created by admin on 4/24/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation

class DataServices {
    static let shared : DataServices = DataServices()
    
    private var _students : [String]?
    var students : [String] {
        get {
            if _students == nil {
                updateStudents()
            }
            return _students!
        }
        set {
            _students = newValue
        }
    }
    
    func updateStudents() {
        _students = ["Chung", "Tuân", "Hoàng", "Hùng", "Quang"]
    }
}
