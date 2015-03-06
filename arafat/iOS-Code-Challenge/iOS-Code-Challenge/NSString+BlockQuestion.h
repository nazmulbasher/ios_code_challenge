//
//  NSString+BlockQuestion.h
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 
 ### Blocks
 
 Suppose some users have been using fake words as their last name. You have been tasked with finding any usage of the words: "awesome", "crap" and "dinosaur".
 Do your work in the `NSString+BlockQuestion` category.
 
 #### Objective 1
 You need to create a method that returns a BOOL on if an array of last names contains one (or more) of the fake words.
 
 **Given**:
 
 ```objective-c
 @[@"appleseed", @"Worku", @"Crap", @"Nguyen", @"Smith"]
 ```
 
 **Return**: TRUE
 
 #### Objective 2
 Add a block to the method that has the NSIndexSet of the fake names. Note this should only be called when fake names are found.
 
 **Given**:
 
 ```objective-c
 @[@"Appleseed", @"Worku", @"Crap", @"Nguyen", @"Smith", @"awesome"]
 ```
 
 **Return**: TRUE and executes the block with an index set containing indexes 2 and 5.
 
 */
@interface NSString (BlockQuestion)

@end
