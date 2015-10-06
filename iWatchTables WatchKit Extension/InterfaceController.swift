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
        
        table.setNumberOfRows(3, withRowType: "tableRowController")
        
        let row = table.rowControllerAtIndex(0) as! tableRowController
        row.rowLabel.setText("Woohoo")
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
