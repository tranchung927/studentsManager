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
    
    private var _students : [Student]?
    var students : [Student] {
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
        _students = []
        for i in Array (0 ... 100) {
            guard let student = Student(name: "Number\(i)", phoneNumber: "012349109929\(i)") else {
                continue
            }
            _students?.append(student)
        }
    }
}
