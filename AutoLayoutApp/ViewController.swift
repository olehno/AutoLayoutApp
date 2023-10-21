//
//  ViewController.swift
//  AutoLayoutApp
//
//  Created by Артур Олехно on 20/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var uiImage: UIImageView!
    
    var isBGreen = false
    var isAOriginText = false
    var isHidden = false
    var isColorChanged = false
    var isCarDisplayed = false
    var isDarkTheme = false
    
    @IBOutlet var styleOutletsCollection: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletsCollection.forEach { button in
            button.layer.cornerRadius = 12
        }
        
    }

    @IBAction func aButtonTapped(_ sender: Any) {
        bButton.backgroundColor = !isBGreen ? .green : .systemBlue
        isBGreen.toggle()
    }
    @IBAction func bButtonTapped(_ sender: Any) {
        aButton.setTitle(isAOriginText ? "Button A" : "Something changed", for: .normal)
        isAOriginText.toggle()
    }
    @IBAction func cButtonTapped(_ sender: Any) {
        aButton.isHidden = !isHidden
        bButton.isEnabled = isHidden
        isHidden.toggle()
    }
    
    @IBAction func dButtonTapped(_ sender: Any) {
        uiImage.image = UIImage(systemName: isCarDisplayed ? "lasso" : "car")
        isCarDisplayed.toggle()
    }
    
    @IBAction func eButtonTapped(_ sender: Any) {
        view.backgroundColor = isDarkTheme ? .white : .black
        isDarkTheme.toggle()
    }
    
}

