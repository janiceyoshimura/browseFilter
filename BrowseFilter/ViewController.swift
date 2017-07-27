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

    //Style Outlets
    @IBOutlet weak var styleBohoLabel: UIButton!
    @IBOutlet weak var styleGlamorousLabel: UIButton!
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
    
    //Silhouette Outlets
    @IBOutlet weak var silhouetteALineLabel: UILabel!
    @IBOutlet weak var silhouetteMermaidLabel: UILabel!
    @IBOutlet weak var silhouetteSheathLabel: UILabel!
    @IBOutlet weak var silhouetteBallgownLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        price1ButtonLabel.layer.cornerRadius = 14
        price2ButtonLabel.layer.cornerRadius = 14
        price3ButtonLabel.layer.cornerRadius = 14
        price4ButtonLabel.layer.cornerRadius = 14
        
        styleBohoLabel.layer.cornerRadius = 14
        styleGlamorousLabel.layer.cornerRadius = 14
        styleClassicLabel.layer.cornerRadius = 14
        styleConservativeLabel.layer.cornerRadius = 14
        styleSexyLabel.layer.cornerRadius = 14
        styleEtherealLabel.layer.cornerRadius = 14
        styleModernLabel.layer.cornerRadius = 14
        styleDramaticLabel.layer.cornerRadius = 14


        styleHalterLabel.layer.masksToBounds = true
        styleHalterLabel.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view, typically from a nib.
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

    
    //IB Actions
    
    @IBAction func price1ButtonPressed(_ sender: UIButton) {
    }
    @IBAction func price2ButtonPressed(_ sender: UIButton) {
    }
    @IBAction func price3ButtonPressed(_ sender: UIButton) {
    }
    @IBAction func price4ButtonPressed(_ sender: UIButton) {
    }
    
    
}
