//
//  FNOrangeDeal.h
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FNOrangeDeal : NSObject

@property (nonatomic, readonly) NSInteger price;
@property (nonatomic, readonly) NSInteger amount;
@property (nonatomic, readonly) NSString *currency;

+ (instancetype)americanOranges;
+ (instancetype)bangladeshiOranges;

@end
