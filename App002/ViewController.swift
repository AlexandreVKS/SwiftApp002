//
//  ViewController.swift
//  App002
//
//  Created by Alexandre Voitikoski da Silva on 07/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var button_c: UIButton!
    @IBOutlet weak var button_0: UIButton!
    @IBOutlet weak var button_eq: UIButton!
    @IBOutlet weak var button_div: UIButton!
    @IBOutlet weak var button_mult: UIButton!
    @IBOutlet weak var button_minus: UIButton!
    @IBOutlet weak var button_plus: UIButton!
    @IBOutlet weak var button_9: UIButton!
    @IBOutlet weak var button_8: UIButton!
    @IBOutlet weak var button_7: UIButton!
    @IBOutlet weak var button_6: UIButton!
    @IBOutlet weak var button_5: UIButton!
    @IBOutlet weak var button_4: UIButton!
    @IBOutlet weak var button_3: UIButton!
    @IBOutlet weak var button_2: UIButton!
    @IBOutlet weak var button_1: UIButton!
    
    var firstNumber: Int = 0;
    var secondNumber: Int = 0;
    var result: Int = 0;
    var currentOperation: String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numberText.text = "0";
    }

    @IBAction func onButtonCClicked(_ sender: Any) {
        numberText.text! = "0";
    }
    @IBAction func onButtonEqClicked(_ sender: Any) {
        addOperation(operation: "=");
    }
    @IBAction func onButtonDivClicked(_ sender: Any) {
        addOperation(operation: "/");
    }
    @IBAction func onButtonMultClicked(_ sender: Any) {
        addOperation(operation: "*");
    }
    @IBAction func onButtonMinusClicked(_ sender: Any) {
        addOperation(operation: "-");
    }
    @IBAction func onButtonPlusClicked(_ sender: Any) {
        addOperation(operation: "+");
    }
    @IBAction func onButton0Clicked(_ sender: Any) {
        addNumberToText(number: "0");
    }
    @IBAction func onButton9Clicked(_ sender: Any) {
        addNumberToText(number: "9");
    }
    @IBAction func onButton8Clicked(_ sender: Any) {
        addNumberToText(number: "8");
    }
    @IBAction func onButton7Clicked(_ sender: Any) {
        addNumberToText(number: "7");
    }
    @IBAction func onButton6Clicked(_ sender: Any) {
        addNumberToText(number: "6");
    }
    @IBAction func onButton5Clicked(_ sender: Any) {
        addNumberToText(number: "5");
    }
    @IBAction func onButton4Clicked(_ sender: Any) {
        addNumberToText(number: "4");
    }
    @IBAction func onButton3Clicked(_ sender: Any) {
        addNumberToText(number: "3");
    }
    @IBAction func onButton2Clicked(_ sender: Any) {
        addNumberToText(number: "2");
    }
    @IBAction func onButton1Clicked(_ sender: Any) {
        addNumberToText(number: "1");
    }
    
    func addNumberToText(number: String)
    {
        let zero = "0";
        let countMaxChar = 10;
        let countMinChar = 1;
        
        if(numberText.text!.count > countMaxChar)
        {
            return;
        }
        if(number == zero)
        {
            if(numberText.text!.count > countMinChar
               || numberText.text != zero)
            {
                numberText.text! += number;
            }
            return;
        }
        
        if(numberText.text == zero)
        {
            numberText.text = number;
        }
        else
        {
            numberText.text! += number;
        }
    }
    
    func addOperation(operation: String)
    {
        currentOperation = operation;
        
        if((numberText.text != nil) && (secondNumber == 0))
        {
            firstNumber = Int(numberText.text!)!;
            numberText.text = "0";
        }
        else
        {
            secondNumber = Int(numberText.text!)!;
            switch operation{
            case "+":
                result = firstNumber + secondNumber;
            case "-":
                result = firstNumber - secondNumber;
            case "*":
                result = firstNumber * secondNumber;
            case "/":
                result = firstNumber / secondNumber;
            default:
                return;
            }
            numberText.text = String(result);
            firstNumber = result;
            secondNumber = 0;
            
        }
    }
}

