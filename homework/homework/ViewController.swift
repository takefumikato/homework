//
//  ViewController.swift
//  homework
//
//  Created by 加藤武文 on 2015/08/16.
//  Copyright (c) 2015年 加藤武文. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var inputText: UITextView!

    @IBAction func textDebug(sender: AnyObject) {
        inputText.resignFirstResponder()
        println(inputText.text)
    }
    @IBAction func datePicker(sender:UIDatePicker){
        let df = NSDateFormatter()
        df.dateFormat = "yyyy/ MM/dd HH:mm:ss"
        var dateStr = df.stringFromDate(sender.date)
        println(dateStr)
    }
}

