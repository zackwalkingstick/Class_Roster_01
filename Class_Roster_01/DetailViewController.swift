//
//  DetailViewController.swift
//  Class_Roster_01
//
//  Created by Zack Walkingstick on 8/13/14.
//  Copyright (c) 2014 Zack_Walkingstick. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!

    @IBOutlet weak var profileImage: UIImageView!
    var person : Person!
    
    @IBAction func changeImagePressed(sender: AnyObject) {
        
       var imagePickerController = UIImagePickerController()
        
       imagePickerController.delegate = self
       imagePickerController.editing = true
       imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
       imagePickerController.showsCameraControls = true
        
       self.presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: [NSObject : UIImage]!){
        
        picker.dismissViewControllerAnimated(true, completion: nil)
        
        var chosenImage = info[UIImagePickerControllerOriginalImage] as UIImage!
        
        self.profileImage.image = chosenImage
    }
    
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController!) {
        
    }
    
//    class func isSourceTypeAvailable(camera: UIImagePickerControllerSourceType) -> ObjCBool{
//    
//
//        
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstNameLabel.text = person.firstName
        self.lastNameLabel.text = person.lastName
    }
    
    
    
}
