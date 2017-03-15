//
//  ResultViewController.swift
//  FirstMyApp
//
//  Created by Kei on 2017/03/12.
//  Copyright © 2017年 Kei. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var price: Int = 0
    var persent: Int = 0
    @IBOutlet weak var resultField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 割引率を算出する
        let persentValue = Float(persent) / 100
        // 割引額を算出する
        let waribikiPrice = Float(price) * persentValue
        // 割引後の価格を算出する
        let persentOffPrice = price - Int(waribikiPrice)
        // 結果を表示する
        resultField.text = "\(persentOffPrice)"
        
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
