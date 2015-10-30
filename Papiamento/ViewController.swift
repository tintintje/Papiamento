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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        papiamento.text = "Ban papia Papiamento!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func translation(sender: UIButton) {
        
        let word = sender.currentTitle!
        
        switch word {
            case "Hallo!": translate("Halo!")
            case "Hoe gaat het?": translate("Con ta bai?")
            case "Hoe heet je?": translate("Con jama bo?")
            case "Mijn naam is...": translate("Mi nomber ta...")
            case "Welkom!": translate("Bon bini!")
            case "Ja": translate("Si")
            case "Nee": translate("No")
            case "Goed": translate("Bon")
            case "Slecht": translate("Malo")
            case "Matig": translate("Basta bon")
            case "Goedendag": translate("Bondia")
            case "Goedemiddag": translate("Bontardi")
            case "Goedenavond": translate("Bonochi")
            case "Welterusten": translate("Drumi dushi")
            case "Tot morgen!": translate("Te majan!")
            default: break
        }
    }
    
    func translate(word: String){
        translated.text = word
        print(word)
    }
    
    
    
}

