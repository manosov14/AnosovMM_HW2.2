//
//  ColorViewController.swift
//  AnosovMM_HW2.2
//
//  Created by Михаил on 25.07.2021.
//

import UIKit

protocol settingsViewControllerDelegate {
    func updateColor(color: UIColor)
}

class ColorViewController: UIViewController {
    
    //MARK: - public properties
    var colorSettings = UIColor(red: 1, green: 1, blue: 0, alpha: 1)
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.colorSettings = view.backgroundColor
        settingsVC.delegate = self
    }    
}

//MARK: - Extensions
extension ColorViewController: settingsViewControllerDelegate {
    func updateColor(color: UIColor) {
        view.backgroundColor = color
    }    
}
