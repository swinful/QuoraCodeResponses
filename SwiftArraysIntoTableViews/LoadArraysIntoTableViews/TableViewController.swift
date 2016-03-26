//
//  ArrayDetailViewController.swift
//  LoadArraysIntoTableViews
//
//  Created by Samuel A WINFUL on 3/15/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {
  
  // MARK: Member variables
  var menuTitle: String?
  var menuItems   = [String]()
  var itemsDetail = [String:String]()
  
  // MARK: UITableViewDataSource protocol implementations
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1 // Single section table
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menuItems.count // Rows dependant on size of items in the menu.
  }
  
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return menuTitle
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
    
    for (key, _) in menuItems.enumerate() {
      if indexPath.row == key {
        print("IndexPath.row == \(key)")
        print("menuItems[\(key)] == \(menuItems[key])")
        cell.textLabel!.text = menuItems[key]
        if let detail = itemsDetail[menuItems[key]] {
          cell.detailTextLabel!.text = detail
        }
      }
    }
    
    return cell
  }
}
