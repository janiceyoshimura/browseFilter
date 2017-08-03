//
//  ViewController.swift
//  BrowseFilter
//
//  Created by Janice Yoshimura on 7/27/17.
//  Copyright © 2017 Janice Yoshimura. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    // IB Outlets
    
    // Price Outlets
    @IBOutlet weak var price1ButtonLabel: UIButton!
    @IBOutlet weak var price2ButtonLabel: UIButton!
    @IBOutlet weak var price3ButtonLabel: UIButton!
    @IBOutlet weak var price4ButtonLabel: UIButton!

    // Style Outlets
    @IBOutlet weak var styleBohoLabel: UIButton!
    @IBOutlet weak var styleElegantLabel: UIButton!
    @IBOutlet weak var styleClassicLabel: UIButton!
    @IBOutlet weak var styleConservativeLabel: UIButton!
    @IBOutlet weak var styleSexyLabel: UIButton!
    @IBOutlet weak var styleEtherealLabel: UIButton!
    @IBOutlet weak var styleModernLabel: UIButton!
    @IBOutlet weak var styleDramaticLabel: UIButton!
    
    // Neckline Outlets
    @IBOutlet var styleHalterLabel: UILabel!
    @IBOutlet weak var styleBateauLabel: UILabel!
    @IBOutlet weak var styleIllusionLabel: UILabel!
    @IBOutlet weak var styleOffTheShoulderLabel: UILabel!
    @IBOutlet weak var styleSweetheartLabel: UILabel!
    @IBOutlet weak var styleJewelLabel: UILabel!
    @IBOutlet weak var styleVNeckLabel: UILabel!
    
    
    // Transparent overlay buttons for neckline
    
    @IBOutlet weak var styleBateauButton: UIButton!
    @IBOutlet weak var styleHalterButton: UIButton!
    @IBOutlet weak var styleIllusionButton: UIButton!
    @IBOutlet weak var styleSweetheartButton: UIButton!
    @IBOutlet weak var styleVNeckButton: UIButton!
    @IBOutlet weak var styleJewelButton: UIButton!
    @IBOutlet weak var styleOffTheShoulderButton: UIButton!
    
    
    
    // Silhouette Outlets
    @IBOutlet weak var silhouetteALineLabel: UILabel!
    @IBOutlet weak var silhouetteMermaidLabel: UILabel!
    @IBOutlet weak var silhouetteSheathLabel: UILabel!
    @IBOutlet weak var silhouetteBallgownLabel: UILabel!
    
    // Transparent overlay for silhouette butttons
    @IBOutlet weak var silhouetteALineButton: UIButton!
    @IBOutlet weak var silhouetteBallgownButton: UIButton!
    @IBOutlet weak var silhouetteMermaidButton: UIButton!
    @IBOutlet weak var silhouetteSheathButton: UIButton!
    
    
    // Location objects
    @IBOutlet weak var sliderRadiusLabel: UILabel!
    @IBOutlet weak var enterLocationText: UITextField!
    @IBOutlet weak var locationRadiusSlider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
            
        // Reformat the buttons
        defaultLabelFormatting(buttonLabelName: price1ButtonLabel)
        defaultLabelFormatting(buttonLabelName: price2ButtonLabel)
        defaultLabelFormatting(buttonLabelName: price3ButtonLabel)
        defaultLabelFormatting(buttonLabelName: price4ButtonLabel)
        
        defaultLabelFormatting(buttonLabelName: styleBohoLabel)
        defaultLabelFormatting(buttonLabelName: styleElegantLabel)
        defaultLabelFormatting(buttonLabelName: styleClassicLabel)
        defaultLabelFormatting(buttonLabelName: styleConservativeLabel)
        defaultLabelFormatting(buttonLabelName: styleSexyLabel)
        defaultLabelFormatting(buttonLabelName: styleEtherealLabel)
        defaultLabelFormatting(buttonLabelName: styleModernLabel)
        defaultLabelFormatting(buttonLabelName: styleDramaticLabel)
        
        

        defaultIconLabelFormatting(labelName: styleBateauLabel)
        defaultIconLabelFormatting(labelName: styleHalterLabel)
        defaultIconLabelFormatting(labelName: styleIllusionLabel)
        defaultIconLabelFormatting(labelName: styleOffTheShoulderLabel)
        defaultIconLabelFormatting(labelName: styleSweetheartLabel)
        defaultIconLabelFormatting(labelName: styleVNeckLabel)
        defaultIconLabelFormatting(labelName: styleJewelLabel)
        
        defaultIconLabelFormatting(labelName: silhouetteALineLabel)
        defaultIconLabelFormatting(labelName: silhouetteBallgownLabel)
        defaultIconLabelFormatting(labelName: silhouetteMermaidLabel)
        defaultIconLabelFormatting(labelName: silhouetteSheathLabel)

        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Resign first responder status
        
            //Looks for single or multiple taps.
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        
            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false
        
            view.addGestureRecognizer(tap)
            }
    
            //Calls this function when the tap is recognized.
            func dismissKeyboard() {
                //Causes the view (or one of its embedded text fields) to resign the first responder status.
                view.endEditing(true)


        
        
    }


    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //Try to make a gradient background color
    class Colors {
        var gl:CAGradientLayer!
        
        init() {
            let colorTop = UIColor(red: 192.0 / 255.0, green: 38.0 / 255.0, blue: 42.0 / 255.0, alpha: 1.0).cgColor
            let colorBottom = UIColor(red: 35.0 / 255.0, green: 2.0 / 255.0, blue: 2.0 / 255.0, alpha: 1.0).cgColor
            
            self.gl = CAGradientLayer()
            self.gl.colors = [colorTop, colorBottom]
            self.gl.locations = [0.0, 1.0]
        }
    }

    
    // IB Actions
    
    // Price labels
    @IBAction func price1ButtonPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: price1ButtonLabel)
    }
    
    @IBAction func price2ButtonPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: price2ButtonLabel)
    }
    
    @IBAction func price3ButtonPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: price3ButtonLabel)
    }
    
    @IBAction func price4ButtonPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: price4ButtonLabel)
    }
    
    // Style labels
    @IBAction func styleBohoPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleBohoLabel)
    }
    
    @IBAction func styleElegantPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleElegantLabel)
    }
    
    @IBAction func styleClassicPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleClassicLabel)
    }
    
    @IBAction func styleDramaticPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleDramaticLabel)
    }

    @IBAction func styleConservativePressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleConservativeLabel)
    }
    
    @IBAction func styleSexyPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleSexyLabel)
    }
    
    @IBAction func styleEtherealPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleEtherealLabel)
    }
    
    @IBAction func styleModernPressed(_ sender: UIButton) {
        changeButtonColor(buttonName: styleModernLabel)
    }
    
    
    // Neckline icon labels
    
    @IBAction func styleBateauButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: styleBateauButton, labelName: styleBateauLabel)
    }
    @IBAction func styelHalterButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: styleHalterButton, labelName: styleHalterLabel)
    }
    @IBAction func styleIllusionButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: styleIllusionButton, labelName: styleIllusionLabel)
    }
    @IBAction func styleSweetheartButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: styleSweetheartButton, labelName: styleSweetheartLabel)
    }
    @IBAction func styleVNeckButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: styleVNeckButton, labelName: styleVNeckLabel)
    }
    @IBAction func styleJewelButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: styleJewelButton, labelName: styleJewelLabel)
    }
    @IBAction func styleOffTheShoulderButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: styleOffTheShoulderButton, labelName: styleOffTheShoulderLabel)
    }
    
    @IBAction func silhouetteALineButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: silhouetteALineButton, labelName: silhouetteALineLabel)
    }
    @IBAction func silhouetteBallgownButton(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: silhouetteBallgownButton, labelName: silhouetteBallgownLabel)
    }
    @IBAction func silhouetteMermaidButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: silhouetteMermaidButton, labelName: silhouetteMermaidLabel)
    }
    @IBAction func silhouetteSheathButtonPressed(_ sender: UIButton) {
        changeIconButtonColor(iconButtonName: silhouetteSheathButton, labelName: silhouetteSheathLabel)
    }
    
    // Slider update
    
    @IBAction func radiusSliderUpdateLabel(_ sender: UISlider)
    {
    if (sender == locationRadiusSlider) {
        sliderRadiusLabel.text = "\(Int(locationRadiusSlider.value))"
    }
    }

    
    // Helper functions
    
    // Change the button color from pink to grey
    func changeButtonColor(buttonName: UIButton) {
        if buttonName.backgroundColor == UIColor(red:0.97, green:0.97, blue:0.98, alpha:1.0) {
            buttonName.backgroundColor = UIColor(red:0.99, green:0.93, blue:0.95, alpha:1.0)
        }
            
        else if buttonName.backgroundColor == UIColor(red:0.99, green:0.93, blue:0.95, alpha:1.0) {
            buttonName.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.98, alpha:1.0)
        }
   
    }
    
    // Change the icon label from pink to white based on the overlay button
    func changeIconButtonColor (iconButtonName: UIButton, labelName: UILabel) {
        if labelName.backgroundColor == UIColor.white {
            labelName.backgroundColor = UIColor(red:0.99, green:0.93, blue:0.95, alpha:1.0)
        }
        else if labelName.backgroundColor == UIColor(red:0.99, green:0.93, blue:0.95, alpha:1.0) {
            labelName.backgroundColor = UIColor.white
        }

    }
    
    
    // Default formatting for buttons with and without icons
    func defaultIconLabelFormatting(labelName: UILabel) {
        labelName.layer.cornerRadius = 10
        labelName.layer.masksToBounds = true
        labelName.backgroundColor = UIColor.white
    }
    
    func defaultLabelFormatting(buttonLabelName: UIButton) {
        buttonLabelName.layer.cornerRadius = 14
        buttonLabelName.backgroundColor = UIColor(red:0.97, green:0.97, blue:0.98, alpha:1.0)
    }

    
}

