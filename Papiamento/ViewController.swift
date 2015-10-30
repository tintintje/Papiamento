//
//  ViewController.swift
//  Papiamento
//
//  Created by Christine Vinck on 30/10/15.
//  Copyright © 2015 Christine Vinck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var papiamento: UILabel!
    @IBOutlet weak var translated: UITextField!
    @IBOutlet weak var defaultButton: UIButton!
    
    var defaultButtonColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        papiamento.text = "Ban papia Papiamento!"
        translated.text = "Laten we Papiaments praten!"
        
        defaultButtonColor = defaultButton.currentTitleColor
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var selected: UIButton?
    
    @IBAction func translation(sender: UIButton) {
        
        if (selected != nil){
            selected!.setTitleColor(defaultButtonColor, forState: UIControlState.Normal)
        }
        
        selected = sender
        sender.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        let word = sender.currentTitle!
        
        switch word {
            
            case "Welkom!": translate("Bon bini!")
            case "Tot ziens!": translate("Te awero!")
            case "Hallo!": translate("Conta!")
            
            case "Hoe gaat het?": translate("Conta bai?")
            case "Hoe heet je?": translate("Con jama bo?")
            case "Mijn naam is...": translate("Mi nomber ta...")
            
            case "Ja": translate("Si")
            case "Nee": translate("No")
            case "Misschien": translate("Porta")
            
            case "Goed": translate("Bon")
            case "Matig": translate("Basta bon")
            case "Slecht": translate("Malo")
            
            case "Dankjewel": translate("Danki")
            case "Dank voor alles!": translate("Danki pa tur cos!")
            case "Geen dank": translate("Di nada")
            
            case "Goedendag": translate("Bondia")
            case "Goedemiddag": translate("Bontardi")
            case "Goedenavond": translate("Bonochi")
            
            case "Vandaag": translate("Awe")
            case "Welterusten": translate("Drumi dushi")
            case "Tot morgen!": translate("Te majan!")
            
            default: break
        }
    }
    
    func translate(word: String){
        translated.text = word
    }
    
    
    
}

