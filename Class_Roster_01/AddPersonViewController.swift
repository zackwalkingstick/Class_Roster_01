//
//  AddPersonViewController.swift
//  Class_Roster_01
//
//  Created by Zack Walkingstick on 8/18/14.
//  Copyright (c) 2014 Zack_Walkingstick. All rights reserved.
//

import UIKit

class AddPersonViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBAction func studentTeacherSegmentedControl(sender: AnyObject) {
    }
    
    @IBAction func submitButtonPressed(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
