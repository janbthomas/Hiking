//
//  MyDetailViewController.swift
//  CIS55Lab2_JanThomas
//
//  Created by Jan on 2/3/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class MyDetailViewController: UIViewController {
    
    @IBOutlet weak var LabelDetail: UITextView!
    @IBOutlet weak var LabelItem: UILabel!
    @IBOutlet weak var ImageItem: UIImageView!

    var LabelItemText : String!
    var LabelDetailText : String!
    var ImageItemFile : UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.LabelItem.text = self.LabelItemText
        self.LabelDetail.text = self.LabelDetailText
        self.ImageItem.image = self.ImageItemFile
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
