//
//  ViewController.m
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) FNImageView *aImageView;
@property (nonatomic, strong) FNImageView *anotherImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.aImageView == nil) {
        self.aImageView                      = [[FNImageView alloc] init];
    }
    
    if (self.anotherImageView == nil) {
        self.anotherImageView                = [[FNImageView alloc] init];
    }
    
    
    FNImageView *fnIV = (FNImageView *)self.anotherImageView;
    
    self.aImageView.imageView            = self.anotherImageView;
    anotherImageView.imageView      = aImageView;
}


- (void)dealloc
{
    self.aImageView         = nil;
    self.anotherImageView   = nil;
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
