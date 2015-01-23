//
//  ViewController.m
//  Field Nation Task
//
//  Created by Ashish on 1/23/15.
//  Copyright (c) 2015 Ashish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize actionButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    actionButton.layer.borderWidth = 2.0f;
    actionButton.layer.borderColor = [UIColor blackColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButton:(id)sender
{
    UIAlertView *myAlert = [[UIAlertView alloc]
                            initWithTitle:@"Alart"
                            message:@"Alart"
                            delegate:self
                            cancelButtonTitle:@"Ok"
                            otherButtonTitles: nil];
    [myAlert show];
}
@end
