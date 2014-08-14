//
//  ViewController.swift
//  Class_Roster_01
//
//  Created by Zack Walkingstick on 8/9/14.
//  Copyright (c) 2014 Zack_Walkingstick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var studentsTableViewController: UITableView!
    var classRoster : NSMutableArray = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.studentsTableViewController.dataSource = self
        self.studentsTableViewController.delegate = self
        
        
       /*------Creating Roster List from plist---------*/
        
        let path = NSBundle.mainBundle().pathForResource("Roster", ofType: "plist")
        let readStudentNames = NSMutableArray(contentsOfFile: path)
    
        
        for name in readStudentNames
        {
            var student = name.componentsSeparatedByString(",")
            var studentName = Person(firstName: "\(student[0])", lastName: "\(student[1])")
            self.classRoster.addObject(studentName)
        }
        
        /*---------------------------------------------*/
 
            
        }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) ->Int
    {
        return 1
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int)-> Int
    {
        return self.classRoster.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("studentCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel.text = classRoster[indexPath.row].fullName()
        
        return cell
    }
    
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        println(indexPath.section)
    }
    
    
    override func viewDidAppear(animated: Bool)
    {
        self.studentsTableViewController.reloadData()
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        self.studentsTableViewController.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

