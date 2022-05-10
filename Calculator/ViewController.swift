//
//  ViewController.swift
//  Calculator
//
//  Created by MASANAO on 2022/05/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!  // 計算結果を表示するラベル
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0  // どの四則演算をするか判定するための変数
    var fromWhere: Int = 0  // どのボタンを押したのかの情報

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func select0() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10
        label.text = String(number1)
    }
    
    @IBAction func select1() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 1
        label.text = String(number1)
    }
    
    @IBAction func select2() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 2
        label.text = String(number1)
    }
    
    @IBAction func select3() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    
    @IBAction func select4() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    
    @IBAction func select5() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 5
        label.text = String(number1)
    }
    
    @IBAction func select6() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 6
        label.text = String(number1)
    }
    
    @IBAction func select7() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    
    @IBAction func select8() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    
    @IBAction func select9() {
        if fromWhere != 0 {
            clear()
        }
        number1 = number1*10 + 9
        label.text = String(number1)
    }
    
    @IBAction func plus() {
        if fromWhere == 0 {
            number2 = number1
            number1 = 0
            ope = 1
        } else {
            number2 = number3
            number1 = 0
            ope = 1
            fromWhere = 0
        }
    }
    
    @IBAction func minus() {
        if fromWhere == 0 {
            number2 = number1
            number1 = 0
            ope = 2
        } else {
            number2 = number3
            number1 = 0
            ope = 2
            fromWhere = 0
        }
    }
    
    @IBAction func multiplication() {
        if fromWhere == 0 {
            number2 = number1
            number1 = 0
            ope = 3
        } else {
            number2 = number3
            number1 = 0
            ope = 3
            fromWhere = 0
        }
    }
    
    @IBAction func division() {
        if fromWhere == 0 {
            number2 = number1
            number1 = 0
            ope = 4
        } else {
            number2 = number3
            number1 = 0
            ope = 4
            fromWhere = 0
        }
    }
    
    @IBAction func equal() {
        if ope == 1 {
            // プラスのとき
            number3 = number2 + number1
        } else if ope == 2 {
            // マイナスのとき
            number3 = number2 - number1
        } else if ope == 3 {
            // かけ算のとき
            number3 = number2 * number1
        } else if ope == 4 {
            // わり算のとき
            number3 = number2 / number1
        }
        
        // 計算結果によって色を変える
        if number3 >= 10 {
            label.textColor = UIColor.red
        } else if number3 <= -10 {
            label.textColor = UIColor.blue
        } else {
            label.textColor = UIColor.black
        }
        
        label.text = String(number3)
        fromWhere = 1
//        number1 = number3
    }
    
    // クリアボタン
    @IBAction func clear() {
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        label.textColor = UIColor.black
        label.text = String(number3)
        fromWhere = 0
    }
}

