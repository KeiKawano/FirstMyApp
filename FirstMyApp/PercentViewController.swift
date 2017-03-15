//
//  PercentViewController.swift
//  FirstMyApp
//
//  Created by Kei on 2017/03/12.
//  Copyright © 2017年 Kei. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {
    
    // 金額を受け取るプロパテイ
    var price = 0
    // 割引パーセンテージ入力フィールド
    @IBOutlet weak var persentField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func tapClearButton(_ sender: Any) {
        persentField.text = "0"
    }
    
    func addValue(buttonValue v: String) -> Void {
        let value = persentField.text! + v
        if let percent = Int(value){
            persentField.text = "\(percent)"
        }
    }
    
    // 「計算する」ボタンがタップされて、次の画面に遷移するときの前処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController
        viewController.price = price
        if let persent = Int(persentField.text!){
            viewController.persent = persent
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
