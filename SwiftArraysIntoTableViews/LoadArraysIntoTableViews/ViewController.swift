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
  let dinner    = ["Salad", "Pasta", "Tea & Crackers", "Milk & Cookies",]
  let dinnerDetails = [
    "Salad" : "Fresh Romain lettuce & Crutons w/ French dressing.",
    "Pasta" : "Vegetable pasta w/ cheeses of sorts.",
    "Tea & Crackers" : "Chineese green tea w/ dab or honey and crackers",
    "Milk & Cookies" : "Our kids favorite. Yummy, goodie Chocolate Cookies."
  ]
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    // var destination = segue.destinationViewController as? UIViewController
    if let ourNavigationController = segue.destinationViewController as? UINavigationController {
    
      // The detail view is the TableViewController. Below is how we obtain it if it exists as 
      // well as its properties.
      if let advc = ourNavigationController.visibleViewController as? TableViewController {
        
        if let identifier = segue.identifier {
          switch identifier {
          case "ShowBreakfast":
            advc.menuTitle   = "Breakfast"
            advc.menuItems   = breakfast
            
          case "ShowLunch":
            advc.menuTitle   = "Lunch"
            advc.menuItems   = lunch
            
          case "ShowDinner":
            advc.menuTitle   = "Dinner"
            advc.menuItems   = dinner
            advc.itemsDetail = dinnerDetails
            
          case "ShowButton4":
            advc.menuTitle = "Button 4"
            
          default: break
          }
        }
      }
    }
  }
}

