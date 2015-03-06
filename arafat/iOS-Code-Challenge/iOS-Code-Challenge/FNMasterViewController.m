//
//  FNMasterViewController.m
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//


#import "FNMasterViewController.h"
#import "FNTextFieldViewController.h"


@interface FNMasterViewController ()

@end


@implementation FNMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    NSLocale *locale = [NSLocale currentLocale];
//    for (NSString *code in [NSLocale ISOCurrencyCodes]) {
//        NSLog(@"%@ : %@", code, [locale displayNameForKey:NSLocaleCurrencyCode value:code]);
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FNTextFieldViewController *destVc = (FNTextFieldViewController *)segue.destinationViewController;
    destVc.delegate = (id)self;
}

 
- (void)shouldSendCharacter:(NSString *)charString
{
    NSLog(@"came from del %@",charString);
    
}

@end
