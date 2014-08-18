//
//  ViewController.swift
//  Class_Roster_01
//
//  Created by Zack Walkingstick on 8/9/14.
//  Copyright (c) 2014 Zack_Walkingstick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var studentsTableViewController: UITableView!
    @IBOutlet weak var addPerson: UIBarButtonItem!
    
    
    var classRoster = Person.loadPlist("Roster_Dictionary")
    var teachers = Person.loadPlist("Teachers_Dictionary")
    var studentAndTeachers = [String: AnyObject]()
    
    
    func studentAndTeacherDictionary()
    {
        self.studentAndTeachers["Teachers"] = self.teachers
        self.studentAndTeachers["Students"] = self.classRoster
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.studentsTableViewController.dataSource = self
        self.studentsTableViewController.delegate = self
        studentAndTeacherDictionary()
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return self.studentAndTeachers.count
    }
    
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int)-> Int
    {
        if (section == 0){
            return self.classRoster.count}
        else{
            return self.teachers.count
        }
    }
    
    
    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String{
        if (section == 0){
            return "Students"
        }
        else{
            return "Teachers"}
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        if (indexPath.section == 0){
            var studentForRow : Person = classRoster[indexPath.row] as Person
            cell.textLabel.text = studentForRow.fullName()}
        else{
            var teacherForRow : Person = teachers[indexPath.row] as Person
            cell.textLabel.text = teacherForRow.fullName()
            }
        return cell
    }
    
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!)
    {
        println(indexPath.section)
    }
    
    
    override func viewWillAppear(animated: Bool)
    {
        self.studentsTableViewController.reloadData()
    }

    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        if segue.identifier == "Show Person" {
        
            var detailViewController = segue.destinationViewController as DetailViewController
            
            var selectedIndexPath = self.studentsTableViewController.indexPathForSelectedRow()
            
            var selectedPerson: AnyObject! = self.classRoster[selectedIndexPath.row]
            
            detailViewController.person = selectedPerson as Person
            
        }
        
    }


}

