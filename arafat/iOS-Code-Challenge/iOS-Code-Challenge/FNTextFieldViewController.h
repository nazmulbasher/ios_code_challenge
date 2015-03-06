//
//  FNTextFieldViewController.h
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FNTextFieldViewControllerDelgate <NSObject>
@optional
- (void)shouldSendCharacter:(NSString *)charString;
@end
@interface FNTextFieldViewController : UIViewController <UITextFieldDelegate> {


}
@property (nonatomic, weak) id <FNTextFieldViewControllerDelgate> delegate;
@end
