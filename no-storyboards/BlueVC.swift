//
//  BlueVC.swift
//  no-storyboards
//
//  Created by Ross Russell on 6/24/16.
//  Copyright © 2016 com.orangemelt. All rights reserved.
//

import UIKit

class BlueVC: UIViewController {

  
  @IBOutlet weak var printLbl:UILabel!
  @IBAction func returnClick(sender: AnyObject) {
   let yellowvc = YellowVC()
   self.presentViewController(yellowvc, animated: true, completion: nil)
  }
  var printTxt = ""
  convenience init( printMe: String!){
        self.init( nibName: "BlueVC", bundle: nil )
    printTxt = printMe
  }
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init( nibName: nibNameOrNil, bundle: nibBundleOrNil )
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder )
    //fatalError("init(coder:) has not been implemented")
  }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(true)
    printLbl.text = printTxt
    
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
