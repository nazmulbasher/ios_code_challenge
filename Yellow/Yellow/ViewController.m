//
//  ViewController.m
//  Yellow
//
//  Created by Ashish on 2/20/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //_button = [UIButton buttonWithType:UIButtonTypeCustom];
    [_button.layer setBorderColor:[[UIColor blackColor] CGColor]];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:nil message:nil delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}@end
