//
//  FNOrangeDeal.m
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "FNOrangeDeal.h"

@implementation FNOrangeDeal

#pragma mark Lifecycle

- (instancetype)initWithAmount:(NSInteger)amount
                      currency:(NSString *)currency
                      forPrice:(NSUInteger)price
{
    self = [super init];
    
    if (self) {
        _amount         = amount;
        _price          = price;
        _currency       = [currency copy];
    }
    
    return self;
}


#pragma mark Public Methods

+ (instancetype)americanOranges
{
    return [[FNOrangeDeal alloc] initWithAmount:10
                                       currency:@"usd"
                                       forPrice:400];
}

+ (instancetype)bangladeshiOranges
{
    return [[FNOrangeDeal alloc] initWithAmount:5
                                       currency:@"bdt"
                                       forPrice:30000];
}


@end
