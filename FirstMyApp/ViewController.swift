//
//  ViewController.swift
//  FirstMyApp
//
//  Created by Kei on 2017/03/10.
//  Copyright © 2017年 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var priceField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tap1Button(_ sender: Any) {
        addValue(buttonValue: "1")
    }
    @IBAction func tap2Button(_ sender: Any) {
        addValue(buttonValue: "2")
    }
    @IBAction func tap3Button(_ sender: Any) {
        addValue(buttonValue: "3")
    }
    @IBAction func tap4Button(_ sender: Any) {
        addValue(buttonValue: "4")
    }
    @IBAction func tap5Button(_ sender: Any) {
        addValue(buttonValue: "5")
    }
    @IBAction func tap6Button(_ sender: Any) {
        addValue(buttonValue: "6")
    }
    @IBAction func tap7Button(_ sender: Any) {
        addValue(buttonValue: "7")
    }
    @IBAction func tap8Button(_ sender: Any) {
        addValue(buttonValue: "8")
    }
    @IBAction func tap9Button(_ sender: Any) {
        addValue(buttonValue: "9")
    }
    @IBAction func tap0Button(_ sender: Any) {
        addValue(buttonValue: "0")
    }
    @IBAction func tap00Button(_ sender: Any) {
        addValue(buttonValue: "00")
    }
    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }
    
    func addValue(buttonValue v: String) -> Void {
        let value = priceField.text! + v
        if let price = Int(value){
            priceField.text = "\(price)"
        }
        
    }
    
    // 画面遷移時の処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        // 次の画面を呼び出す
        let viewController = segue.destination as! PercentViewController
        // 金額フィールドの文字列を数値に変換する
        if let price = Int(priceField.text!) {
            // 数値に変換した金額を次の画面に設定する
            viewController.price = price
        }
    }
    
    //最後の画面から戻ってきたときの処理
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        priceField.text = "0"
    }

}

