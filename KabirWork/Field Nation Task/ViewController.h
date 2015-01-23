//
//  ViewController.h
//  Field Nation Task
//
//  Created by Ashish on 1/23/15.
//  Copyright (c) 2015 Ashish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *actionButton;
}

@property (nonatomic, strong) UIButton *actionButton;
- (IBAction)actionButton:(id)sender;


@end

