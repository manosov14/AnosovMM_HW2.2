//
//  ViewController.swift
//  AnosovMM_HW2.2
//
//  Created by Михаил on 08.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {

    //MARK: - Pulic properties
    
    //Целевая переменная
    var colorSettings: UIColor?
    
    //Временные переменные (текущее рабочее)
    var redColorExtValue: Float = 0
    var greenColorExtValue: Float = 0
    var blueColorExtValue: Float = 0
    
    // MARK: - IBOutlets
    @IBOutlet var viewer: UIView!
    
    @IBOutlet weak var viewArea: UIView!
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    // MARK: Life sicle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColorView(red: redColorExtValue, green: greenColorExtValue, blue: blueColorExtValue)
        
        redColorSlider.value = redColorExtValue
        greenColorSlider.value = greenColorExtValue
        blueColorSlider.value = blueColorExtValue
    
        redColorLabel.text = String(format: "%.2f", redColorExtValue)
        greenColorLabel.text = String(format: "%.2f", greenColorExtValue)
        blueColorLabel.text = String(format: "%.2f", blueColorExtValue)
        
        viewArea.layer.cornerRadius = viewArea.frame.width / 15
    }
    
    //MARK: - IBActions
    
    @IBAction func changeColorAction() {
        changeColorView(red: redColorSlider.value, green: greenColorSlider.value, blue: blueColorSlider.value)
        refereshLabelText()
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    //MARK: -Public methods
    
    private func changeColorView(red: Float, green: Float, blue: Float) {
        viewArea.backgroundColor = UIColor(red: CGFloat(red),
                                           green: CGFloat(green),
                                           blue: CGFloat(blue),
                                           alpha: 1)
        
    }
    
    private func refereshLabelText() {
        redColorLabel.text = String(format: "%.2f", redColorSlider.value)
        greenColorLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
    }
}





