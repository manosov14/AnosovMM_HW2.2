//
//  ViewController.swift
//  AnosovMM_HW2.2
//
//  Created by Михаил on 08.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    //MARK: - Pulic properties
    var colorSettings: UIColor?
    var delegate: ColorViewController?
     
    // MARK: - IBOutlets
    @IBOutlet weak var colorViewOU: UIView!
    @IBOutlet weak var viewer: UIView!
    
    @IBOutlet weak var redLabelOU: UILabel!
    @IBOutlet weak var greenLabelOU: UILabel!
    @IBOutlet weak var blueLabelOU: UILabel!
    
    @IBOutlet weak var redSliderOU: UISlider!
    @IBOutlet weak var greenSliderOU: UISlider!
    @IBOutlet weak var blueSliderOU: UISlider!
    
    // MARK: Life sicle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        colorViewOU.backgroundColor = colorSettings
        colorViewOU.layer.cornerRadius = colorViewOU.frame.width / 15
        setLabelValue(for: redLabelOU, greenLabelOU, blueLabelOU)
    }
    
    //MARK: - IBActions
    @IBAction func changeColorAction() {
        setLabelValue(for: redLabelOU, greenLabelOU, blueLabelOU)
        setColor()
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        colorSettings = colorViewOU.backgroundColor
        delegate?.updateColor(color: colorViewOU.backgroundColor!)
        dismiss(animated: true)
    }
    
    //MARK: - Private methods
    
    private func setColor(red: Float, green: Float, blue: Float) {
        colorViewOU.backgroundColor = UIColor(
            red: CGFloat(red),
            green: CGFloat(green),
            blue: CGFloat(blue),
            alpha: 1)
    }
    
    private func setColor() {
        colorViewOU.backgroundColor = UIColor(red: CGFloat(redSliderOU.value),
                                              green: CGFloat(greenSliderOU.value),
                                              blue: CGFloat(blueSliderOU.value),
                                              alpha: 1)
    }
    
    private func setLabelValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabelOU:
                label.text = string(from: redSliderOU)
            case greenLabelOU:
                label.text = string(from: greenSliderOU)
            default:
                label.text = string(from: blueSliderOU)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
