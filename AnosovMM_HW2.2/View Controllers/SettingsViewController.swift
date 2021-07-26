//
//  ViewController.swift
//  AnosovMM_HW2.2
//
//  Created by Михаил on 08.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var colorViewOU: UIView!
    @IBOutlet weak var viewer: UIView!
    
    @IBOutlet weak var redLabelOU: UILabel!
    @IBOutlet weak var greenLabelOU: UILabel!
    @IBOutlet weak var blueLabelOU: UILabel!
    
    @IBOutlet weak var redSliderOU: UISlider!
    @IBOutlet weak var greenSliderOU: UISlider!
    @IBOutlet weak var blueSliderOU: UISlider!
    
    //MARK: - Pulic properties
    var colorSettings: UIColor?
    var delegate: ColorViewController?
    
    // MARK: Life sicle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        colorViewOU.backgroundColor = colorSettings
        colorViewOU.layer.cornerRadius = colorViewOU.frame.width / 15
        setSlidersColor()
        setLabelValue(for: redLabelOU, greenLabelOU, blueLabelOU)
    }
    
    //MARK: - IBActions
    @IBAction func changeColorAction() {
        setLabelValue(for: redLabelOU, greenLabelOU, blueLabelOU)
        setColor()
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        delegate?.updateColor(color: colorViewOU.backgroundColor ?? UIColor(red: 1, green: 1, blue: 0, alpha: 1))
        dismiss(animated: true)
    }
    
    //MARK: - Private methods
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
    
    private func setSlidersColor() {
        let ciColor = CIColor(color: colorSettings ?? .white)
        redSliderOU.value = Float(ciColor.red)
        greenSliderOU.value = Float(ciColor.green)
        blueSliderOU.value = Float(ciColor.blue)
    }
}
