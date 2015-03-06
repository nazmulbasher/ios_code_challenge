//
//  FNTextFieldViewController.m
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "FNTextFieldViewController.h"

@interface FNTextFieldViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation FNTextFieldViewController
@synthesize delegate;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    NSString * searchStr = [textField.text stringByReplacingCharactersInRange:range
                                                                   withString:string];
    
    if ([searchStr isEqualToString:@"dismiss"]) {
        [self.view endEditing:YES];
    } else {
        if ([self.delegate respondsToSelector:@selector(shouldSendCharacter:)]) {
            [self.delegate shouldSendCharacter:searchStr];
        }
    
    }

    return YES;
}



@end
