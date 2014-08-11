//
//  ViewController.swift
//  Class_Roster_01
//
//  Created by Zack Walkingstick on 8/9/14.
//  Copyright (c) 2014 Zack_Walkingstick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("Roster", ofType: "plist")
        let readStudentNames = NSMutableArray(contentsOfFile: path)
        let classRoster : NSMutableArray = []
        
        
        for name in readStudentNames as NSMutableArray{
            
            var student = name.componentsSeparatedByString(",")
            var studentName = Person(firstName: "\(student[0])", lastName: "\(student[1])")
            println(studentName.fullName("\(student[0])", lastName: "\(student[1])"))
            classRoster.addObject(studentName)
            
        }
        
        println(classRoster)

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

