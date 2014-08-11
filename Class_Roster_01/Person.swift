//
//  Person.swift
//  Class_Roster_01
//
//  Created by Zack Walkingstick on 8/9/14.
//  Copyright (c) 2014 Zack_Walkingstick. All rights reserved.
//

import Foundation
import UIKit

class Person : NSObject{

    var firstName : String
    var lastName : String
    var profileImage : UIImage?
    
    init(firstName: String, lastName: String){
    
        self.firstName = firstName
        self.lastName = lastName
    
    }
    
    func fullName (firstName: String, lastName: String) -> String{
    
        return (firstName + " " + lastName)
    
    }

}
