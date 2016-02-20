//
//  ViewController.swift
//  计算器V0.1
//
//  Created by kaitouLee on 16/2/20.
//  Copyright © 2016年 kaitou Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    //实现清零
    @IBAction func becomeZero(sender: AnyObject) {
        self.resultLabel.text = "0"
        self.textOne.text = ""
        self.textTwo.text = ""
    }
    @IBAction func calculate(){
        //提取出来文本框的数字
        var num1 = Int(self.textOne.text!)
        var num2 = Int(self.textTwo.text!)
//        解决没有任何输入时候点击计算报错 下面演示二种方法判断是否为0
        if(self.textOne.text!.isEmpty){
            num1 = 0
        }
        if(!self.textTwo.hasText()){
            num2 = 0
        }
        
//        二个数字相加
        let resultNum = num1! + num2!
//        将结果数字转换成字符串类型
        let resultStr = String.init(resultNum)
//        转换更加简单
        let resultStr1 = "\(resultNum)"
        
        self.resultLabel.text = resultStr
        print(resultStr1)
        
        self.textOne.endEditing(true)
        self.textTwo.endEditing(true)
        
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

