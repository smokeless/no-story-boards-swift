//
//  ViewController.swift
//  no-storyboards
//
//  Created by Ross Russell on 6/24/16.
//  Copyright © 2016 com.orangemelt. All rights reserved.
//

import UIKit

class YellowVC: UIViewController {
  
  var bluevc: BlueVC!
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init( nibName: nibNameOrNil, bundle: nibBundleOrNil )
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder )
    //fatalError("init(coder:) has not been implemented")
  }
  
  
  @IBAction func loadBlueView(sender: AnyObject) {
    bluevc = BlueVC(printMe: "print this now")
    self.presentViewController(bluevc, animated: true, completion: nil)
    
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

