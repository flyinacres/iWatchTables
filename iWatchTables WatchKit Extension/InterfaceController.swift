//
//  InterfaceController.swift
//  iWatchTables WatchKit Extension
//
//  Created by Ronald Fischer on 10/5/15.
//  Copyright (c) 2015 qpiapps. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let stooges = ["Larry", "Moe", "Curly", "Shemp"]
        let filenames = ["head", "headangle2", "side", "tail"]
        
        table.setNumberOfRows(stooges.count, withRowType: "tableRowController")
        
        for var i = 0; i < stooges.count; i = i + 1 {
            let row = table.rowControllerAtIndex(i) as! tableRowController
            row.rowLabel.setText(stooges[i])
            row.rowImage.setImageNamed(filenames[i] + ".png")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
