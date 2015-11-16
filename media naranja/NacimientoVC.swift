//
//  NacimientoVC
//  media naranja
//
//  Created by Alberto Benito Campo on 5/11/15.
//  Copyright © 2015 g336 DIT UPM. All rights reserved.
//

import UIKit

class NacimientoVC: UIViewController {
    
    
    @IBAction func goHome(segue:UIStoryboardSegue) {
        
    }

    @IBOutlet weak var fechaNac: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let fechaHoy = NSDate()
        
        if fechaNac.date.laterDate(fechaHoy) === fechaNac.date {
            //lanzar alertview
            
            let alert = UIAlertController(title: "Problema", message: "No puedes nacer en el futuro", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Confirmar", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: false, completion: nil)
            shouldPerformSegueWithIdentifier("finalSegue", sender: nil)
            
        } else {
            
            if segue.identifier == "finalSegue"{
            
                if let fechaBirth = segue.destinationViewController as? FinalVC {
                    
                    fechaBirth.fechaNacimiento = fechaNac.date
                
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
