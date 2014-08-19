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
    
    
    func fullName () -> String{
        return (self.firstName + " " + self.lastName)
    }
    
    
    class func loadPlist(fileName: String) -> Array<Person>{
        var listOfPeople = Array<Person>()
        let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "plist")
        let people = NSArray(contentsOfFile: path)

        for person in people {
             if let person = person as? Dictionary<String, String>{
             let firstName = person["firstName"]
             let lastName = person["lastName"]
             let newPerson = Person(firstName: firstName!, lastName: lastName!)
             listOfPeople.append(newPerson)
            }
        }
        return listOfPeople
    }

}
