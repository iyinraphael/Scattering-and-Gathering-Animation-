//
//  ViewController.swift
//  Scattering and Gathering (Animation)
//
//  Created by Iyin Raphael on 1/9/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        setUpLabels()
    }
    
    private let dimension: CGFloat = 40.0
    
    
    var labels = [UILabel]()
    
    func setUpLabels(){
        
        var count: CGFloat = 1
        
        let lambdaString = "LAMBDA"
        
        for char in lambdaString {
            
            let space: CGFloat =  (dimension * count) + (8 * count)
            let label = UILabel(frame: CGRect(x: space, y: 100, width: 80, height: 80))
            view.addSubview(label)
            label.text = "\(char)"
            label.font = UIFont.systemFont(ofSize: 55)
            labels.append(label)
            count += 1
        }
        
        
    }

    @IBAction func toggle(_ sender: Any) {
    }
    
}

