//
//  AddViewController.swift
//  recipe
//
//  Created by alvin wen on 7/3/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var recipeContent: UITextView!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleText.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        recipeContent.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButton_click(_ sender: Any) {
        recipeContent.resignFirstResponder()
    }
    
    @IBAction func titleDoneButton_click(_ sender: Any) {
        titleText.resignFirstResponder()
    }
    
    func handleButtonStates(){
        //handle done button
        if(recipeContent.text != ""){
            doneButton.isEnabled = true
        }else{
            doneButton.isEnabled = false
        }
        //handle add button
        if(titleText.text != "" && recipeContent.text != ""){
            addButton.isEnabled = true
            addButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        }else{
            addButton.isEnabled = false
            addButton.setTitleColor(UIColor.lightGray, for: UIControlState.normal)
        }
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
