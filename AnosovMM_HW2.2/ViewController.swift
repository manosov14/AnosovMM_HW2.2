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
    
    // MARK: Life sicle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //refresh label text
        redColorLabel.text = String(format: "%.2f", redColorSlider.value)
        greenColorLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
        
        //start state for view
        changeColorView()
    }
    
    //MARK: - IBActions
    
    @IBAction func changeColorAction() {
        changeColorView()
        refereshLabelText()
    }
    
    //MARK: -Public methods
    
    private func changeColorView() {
        viewArea.backgroundColor = UIColor(red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: 1)
        
    }
    
    private func refereshLabelText() {
        redColorLabel.text = String(format: "%.2f", redColorSlider.value)
        greenColorLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
    }
}





