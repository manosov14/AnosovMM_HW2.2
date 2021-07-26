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
    
    //MARK: - IB Outlets
    @IBOutlet weak var backgroundViewOU: UIView!
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundViewOU.backgroundColor = colorSettings
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.colorSettings = backgroundViewOU.backgroundColor
        settingsVC.delegate = self
    }
    
    // MARK: - IB Actions
    
    @IBAction func colorSettingsAction(_ sender: Any) {
    }
}
    //MARK: - Extensions

extension ColorViewController: settingsViewControllerDelegate {
    func updateColor(color: UIColor) {
        backgroundViewOU.backgroundColor = color
    }    
}
