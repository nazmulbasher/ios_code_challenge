//
//  FNLastNameSupplier.h
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FNLastNameSupplier : NSObject

@property (nonatomic, assign, readonly) NSInteger currentIndex;


+ (NSString *)nextLastName;

@end
