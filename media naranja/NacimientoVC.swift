//
//  NacimientoVC
//  media naranja
//
//  Created by Alberto Benito Campo on 5/11/15.
//  Copyright © 2015 g336 DIT UPM. All rights reserved.
//

import UIKit

class NacimientoVC: UIViewController {

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
