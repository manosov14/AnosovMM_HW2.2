//
//  ViewController.swift
//  AnosovMM_HW2.2
//
//  Created by Михаил on 08.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var viewer: UIView!
    
    @IBOutlet weak var viewArea: UIView!
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let minValue: Float = 0
        let maxValue: Float = 1
        let currentValue: Float = 0.00
        
        //redColorSlider
        redColorSlider.value = currentValue
        redColorLabel.text = String(redColorSlider.value)
        redColorSlider.minimumValue = minValue
        redColorSlider.maximumValue = maxValue
        redColorSlider.thumbTintColor = .red
        redColorSlider.minimumTrackTintColor = .red
        
        //greenColorSlider
        greenColorSlider.value = currentValue
        greenColorSlider.minimumValue = minValue
        greenColorSlider.maximumValue = maxValue
        greenColorSlider.thumbTintColor = .green
        greenColorSlider.minimumTrackTintColor = .green
        
        //blueColorSlider
        blueColorSlider.value = currentValue
        blueColorSlider.minimumValue = minValue
        blueColorSlider.maximumValue = maxValue
        blueColorSlider.thumbTintColor = .blue
        blueColorSlider.minimumTrackTintColor = .blue
        
        //start value for labels
        redColorLabel.text = String(format: "%.2f", currentValue)
        greenColorLabel.text = String(format: "%.2f", currentValue)
        blueColorLabel.text = String(format: "%.2f", currentValue)
        
        //start state for view
        changeColor()
    }
    
    //MARK: - IBActions
    
    @IBAction func changeColorAction() {
        changeColor()
        redColorLabel.text = String(format: "%.2f", redColorSlider.value)
        greenColorLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
    }
    
    //MARK: -Public methods
    
    func changeColor() {
        viewArea.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
    }
}




