//
//  GreenViewController.m
//  FieldNationInterview
//
//  Created by Ashish on 1/30/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "GreenViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface GreenViewController ()

@property (nonatomic, weak) IBOutlet UIView *circularView;

@end

@implementation GreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _circularView.layer.cornerRadius = 50;
    _circularView.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
