//
//  ColorViewController.swift
//  AnosovMM_HW2.2
//
//  Created by Михаил on 25.07.2021.
//

import UIKit

protocol settingsViewControllerDelegate {
    
    //Целевой вариант
    //func setNewColor(color: UIColor)
    
    //Текущий рабочий вариант
    func setNewColor(red: Float, green: Float, blue: Float)
}

class ColorViewController: UIViewController {
    
    // Целевая переменная
    var colorSettings = UIColor(red: CGFloat(1),
                                green: CGFloat(1),
                                blue: CGFloat(1),
                                alpha: CGFloat(1))
    
    // Временные переменные (текущее рабочее)
    var red: Float = 1
    var green: Float = 0.5
    var blue: Float = 0.5
    
    @IBOutlet weak var backgroundViewOU: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundViewOU.backgroundColor = colorSettings
        backgroundViewOU.backgroundColor = UIColor(
            red: CGFloat(red),
            green: CGFloat(green),
            blue: CGFloat(blue),
            alpha: CGFloat(1))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        
        // Целевой параметр
        settingsVC.colorSettings = colorSettings
        
        //Временное решение (текущее рабочее)
        settingsVC.redColorExtValue = red
        settingsVC.greenColorExtValue = green
        settingsVC.blueColorExtValue = blue
        
    }
    
    @IBAction func changeSettingsAction(_ sender: Any) {
    }
}

extension ColorViewController: settingsViewControllerDelegate {
    func setNewColor(red: Float, green: Float, blue: Float) {
        <#code#>
    }
    
    
}
