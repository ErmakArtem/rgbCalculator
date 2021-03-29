//
//  ViewController.swift
//  rgbCalculator
//
//  Created by Артем Ермак on 3/26/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redSliderTitle: UILabel!
    @IBOutlet var greenSliderTitle: UILabel!
    @IBOutlet var blueSliderTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func updateColor(){
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    @IBAction func sliderChanged() {
        redSliderTitle.text = String(format: "%.2f", redSlider.value)
        greenSliderTitle.text = String(format: "%.2f", greenSlider.value)
        blueSliderTitle.text = String(format: "%.2f", blueSlider.value)
        updateColor()
    }
    
}

