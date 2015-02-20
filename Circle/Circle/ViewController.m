//
//  ViewController.m
//  Circle
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
    _subview.layer.cornerRadius = 70;
    _subview.layer.masksToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
