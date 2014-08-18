//
//  DetailViewController.swift
//  Class_Roster_01
//
//  Created by Zack Walkingstick on 8/13/14.
//  Copyright (c) 2014 Zack_Walkingstick. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController
{
    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    
    var person : Person!
    
    override func viewDidLoad() {
        
        self.firstNameLabel.text = person.firstName
        self.lastNameLabel.text = person.lastName
    }
    
}
