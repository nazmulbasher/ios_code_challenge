//
//  FNMasterViewController.h
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

/*
 
 ### Delegation
 
 You are given `FNTextFieldViewController` that contains a `UITextField` and is presented modally over `FNMasterViewController`.
 
 #### Objective 1
 **Create**: A delegate protocol on `FNTextFieldViewController` and set `FNMasterViewController` as it's delegate.
 
 #### Objective 2
 Create a method that sends the value of the text displayed in the `UITextField` to the delegate.
 
 **Given**: A user types "h" then "i" so that the `UITextField` reads "hi"
 
 **Return**: Delegate receives "h" and then "hi"
 
 **Given**: A user presses backspace when the textField reads "hi"
 
 **Return**: Delegate receives "h"
 
 #### Objective 3
 **Given**: A user types "dismiss" in the text field
 
 **Reponse**: Delegate hides the keyboard and dismisses the `FNTextFieldViewController`.

 */

#import <UIKit/UIKit.h>

@interface FNMasterViewController : UIViewController

@end
