//
//  AddViewController.swift
//  CIS55Lab2_JanThomas_NodiaMamatova
//
//  Created by Jan on 2/27/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var AddImageName: UITextField!
    @IBOutlet weak var AddHikingDescription: UITextView!
    @IBOutlet weak var AddHikingLocation: UITextField!
    
    var newHikingItem : ((HikingListObject) -> ())!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func clickSave(_ sender: Any) {
        print("Location: self.Add: \(self.AddHikingLocation.text!)")
        print("Image: self.Add: \(self.AddImageName.text!)")
        print("Detail: self.Add: \(self.AddHikingDescription.text!)")
        
        newHikingItem(HikingListObject(hikingLocations: self.AddHikingLocation.text!, hikingImages: UIImage(named: self.AddImageName.text!)!, hikingDetail: self.AddHikingDescription.text!, hikingChecked: false))
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
