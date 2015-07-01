//
//  ViewController.swift
//  FunFacts
//
//  Created by Brady Coye on 5/20/15.
//  Copyright (c) 2015 Brady Coye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UILabel!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factBook.randomFact()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        funFactButton.tintColor = randomColor
        view.backgroundColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }

}

