//
//  FinalVC.swift
//  media naranja
//
//  Created by Alberto Benito Campo on 5/11/15.
//  Copyright © 2015 g336 DIT UPM. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {
    
    var fechaNacimiento : NSDate?
    
    @IBOutlet weak var enamoramientoPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tiempodeAmar = enamoramientoPicker.date
        
        if fechaNacimiento?.earlierDate(tiempodeAmar) == tiempodeAmar{
            
            let alert = UIAlertController(title: "Problema", message: "No puedes enamorarte antes de nacer", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Confirmar", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: false, completion: nil)
            shouldPerformSegueWithIdentifier("finalSegue", sender: nil)
            
        } else {
        
            if segue.identifier == "muerteSegue"{
                
                if let fechaMorir = segue.destinationViewController as? MuerteVC {
                    
                    let vivencias = enamoramientoPicker.date.timeIntervalSinceDate(fechaNacimiento!)
                    let diadePalmar = enamoramientoPicker.date.dateByAddingTimeInterval(vivencias)
                    
                    fechaMorir.fechaDePalmar = diadePalmar
                }
            }
            
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
