//
//  FinalVC.swift
//  media naranja
//
//  Created by Alberto Benito Campo on 5/11/15.
//  Copyright © 2015 g336 DIT UPM. All rights reserved.
//
import UIKit

class MuerteVC: UIViewController {

    @IBOutlet weak var fechaMuerteLabel: UILabel!
    
    var fechaDePalmar : NSDate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if fechaDePalmar != nil {
        let formatoFecha = NSDateFormatter()
        formatoFecha.dateFormat = "dd-MM-YYYY"
        
            fechaMuerteLabel.text = formatoFecha.stringFromDate(fechaDePalmar!)
        }
            // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
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
