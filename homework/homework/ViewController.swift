//
//  ViewController.swift
//  homework
//
//  Created by 加藤武文 on 2015/08/16.
//  Copyright (c) 2015年 加藤武文. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet weak var pickerView:UIPickerView!
    
    var tea_list = ["ダージリン", "アールグレイ", "アッサム", "オレンジペコ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pickerView.dataSource = self
        pickerView.delegate = self
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tea_list.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return tea_list[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        println("選択されたのは、\(row)行目で、\(tea_list[row])です。")
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

    @IBAction func tapBtn(sender: AnyObject) {
        var alertController = UIAlertController(
            title: "タイトル",
            message: "メッセージ",
            preferredStyle: .Alert)
        
        alertController.addAction(UIAlertAction(
            title: "OK",
            style: .Default,
            handler: {action in self.myOK() }))
        
        alertController.addAction(UIAlertAction(
            title: "Cancel",
            style: .Cancel,
            handler: {action in self.myCancel() }))
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func myOK(){
        println("OK")
    }
    
    func myCancel(){
        println("キャンセル")
    }
}

