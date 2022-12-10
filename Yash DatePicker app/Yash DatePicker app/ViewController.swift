//
//  ViewController.swift
//  Yash DatePicker app
//
//  Created by Felix IT on 24/11/22.
//  Copyright © 2022 Felix IT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthDateTf: UITextField!
    
    let datepicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createDatePicker() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
         toolbar.setItems([doneBtn], animated: true)
        
        
        birthDateTf.inputAccessoryView = toolbar
        
        birthDateTf.inputView = datepicker
        datepicker.datePickerMode = .dateAndTime
    }
    
    @objc func donePressed () {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        
        birthDateTf.text = formatter.string(from: datepicker.date)
        self.view.endEditing(true)
    }
}

