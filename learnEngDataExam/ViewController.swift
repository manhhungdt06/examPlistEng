//
//  ViewController.swift
//  learnEngDataExam
//
//  Created by techmaster on 11/8/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var items : [Item] = []
    var myDict: NSDictionary?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let path = Bundle.main.path(forResource: "items", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        
        for dic in (myDict!.allValues as? [[String: Any]])! {
//            print("dic = \(dic)")
            self.items.append(Item(sentence: dic["sentence"] as! String, meaning: dic["meaning"] as! String, type: dic["type"] as! String, vocalization: dic["vocalization"] as! String, sound: dic["sound"] as! String, image: dic["image"] as! String, synonym: dic["synonym"] as! String))
        }
        


    }

    @IBAction func showItemList(_ sender: UIButton) {
        
        if let path = Bundle.main.path(forResource: "items", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        
   
        for (_, element) in (myDict?.enumerated())! {
            print("element.key: \(element.key) \n")
        }
//        for dic in myDict! {
//            print("dic name = \(dic.key)")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

