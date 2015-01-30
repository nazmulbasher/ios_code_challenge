//
//  YellowViewController.m
//  FieldNationInterview
//
//  Created by Ashish on 1/30/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "YellowViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface YellowViewController ()

@property (nonatomic, weak) IBOutlet UIButton *actionButton;

@end

@implementation YellowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _actionButton.layer.borderColor = [UIColor blackColor].CGColor;
    _actionButton.layer.borderWidth = 1.0f;\
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Action" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

@end
