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
    
    let colors: [UIColor] = [.red, .blue, .green, .purple, .yellow, .gray]
    
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
    
    
    @IBOutlet weak var imageView: UIView!
    

    @IBAction func toggle(_ sender: Any) {
        
        scatter()
    }
    
    func scatter() {
        
        guard isViewLoaded else {return}
        UIView.animate(withDuration: 0.5) {
            self.imageView.alpha = 0.0
        }
        
        for label in labels {
            UIView.animate(withDuration: 0.5) {
                var frame = label.frame
                
                let num1 = Int.random(in: 1...100)
                let num2 = Int.random(in: 100...200)
                
                let randColor = Int.random(in: 0...5)
                
                label.transform = CGAffineTransform(rotationAngle: CGFloat(integerLiteral: num2) )
                label.backgroundColor = self.colors[randColor]
                
                frame.origin.x += CGFloat(integerLiteral: num1)
                frame.origin.y += CGFloat(integerLiteral: num2)
                
                label.frame = frame
                print("\(label)")
            }
            
        }
        
    }
    
    
    func gather(){
        
        UIView.animate(withDuration: 0.5) {
            self.imageView.alpha = 1.0
        }
        
        var count = 0.0
        for label in labels{
            
            let space: CGFloat =  (dimension * count) + (8 * count)
            var frame = label.frame
            frame.origin.x =
        }
    }
}

