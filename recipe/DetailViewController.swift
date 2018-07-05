//
//  DetailViewController.swift
//  recipe
//
//  Created by alvin wen on 7/3/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var preRecipe: String?
    @IBOutlet weak var recipeContent: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeContent.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.title = preRecipe
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
