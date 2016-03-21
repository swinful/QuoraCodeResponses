//
//  ViewController.swift
//  LoadArraysIntoTableViews
//
//  Created by Samuel A WINFUL on 3/15/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let breakfast = ["Pancakes", "Bacon & Eggs", "Grits", "Oatmeal", "Cream of Wheat"]
  let lunch     = ["Salmon & Rice", "Chicken & Rice", "Potatoes & Veggies", "Pizza", "Burger & Fries"]
  let dinner    = ["Salad", "Pasta", "Tea & Crackers", "Milk & Cookies", "Fried Eggs"]
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    // var destination = segue.destinationViewController as? UIViewController
    if let ourNavigationController = segue.destinationViewController as? UINavigationController { // destination as? UINavigationController
      // destination = ourNavigationController.visibleViewController
    
      // As we transition to the detail view controller, ensure the destination is the
      // ArrayDetailViewController.
      // if let advc = destination as? ArrayDetailViewController
      if let advc = ourNavigationController.visibleViewController as? TableViewController {
        
        // The identifier may not be set
        if let identifier = segue.identifier {
          switch identifier {
          case "ShowBreakfast":
            advc.menuTitle = "Breakfast"
            advc.menuItems = breakfast
            
          case "ShowLunch":
            advc.menuTitle = "Lunch"
            advc.menuItems = lunch
            
          case "ShowDinner":
            advc.menuTitle = "Dinner"
            advc.menuItems = dinner
            
          case "ShowButton4":
            advc.menuTitle = "Button 4"
            
          default: break
          }
        }
      }
    }
  }
}

