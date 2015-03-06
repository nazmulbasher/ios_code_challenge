//
//  NSString+LocalizationQuestion.h
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 
 ### Localization
 
 A server is supplying data, to an iOS app, about a deal from an orange producer.
 The data has been mapped into an object called `FNOrangeDeal`.
 
 Your task is to create a method that will take the data and return a human readable string.
 
 #### Objective 1
 Display the price localized to the currency that the deal is in.
 
 **Given** `[FNOrangeDeal bangladeshiOranges]`:
 
 ```objective-c
 [[FNOrangeDeal alloc] initWithAmount:5 currency:@"bdt" forPrice:30000];
 ```
 
 **Return**:
 The output string should be: "The oranges cost ৳300.00 for 5."
 
 #### Objective 2
 The output string should be localized.
 
 **Given** `[FNOrangeDeal americanOranges]`:
 ```objective-c
 [[FNOrangeDeal alloc] initWithAmount:10 currency:@"usd" forPrice:400];
 ```
 
 **Return**:
 
 On a German language iOS device: "Die Orangen kosten $4.00 für 10."
 
 On a English language iOS device: "The oranges cost $4.00 for 10."
 */

@interface NSString (LocalizationQuestion)

@end
