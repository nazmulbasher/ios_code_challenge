//
//  FNLastNameSupplier.m
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "FNLastNameSupplier.h"

@interface FNLastNameSupplier ()

@property (nonatomic, assign, readwrite) NSInteger currentIndex;
@property (nonatomic, strong) NSArray *names;
@end

@implementation FNLastNameSupplier

+ (NSArray *)fn_LastNames3
{
    return @[@"dinosaur", @"appleseed", @"Worku", @"Crap", @"Nguyen", @"Smith"];
}


#pragma mark Public Methods

+ (NSString *)nextLastName
{
    return [[FNLastNameSupplier sharedInstance] _nextLastName];
}

#pragma mark Lifecycle

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static FNLastNameSupplier *_sharedInstance;
    dispatch_once(&once, ^{
        _sharedInstance = [self new];
    });
    return _sharedInstance;
}

- (instancetype)init
{
    self  = [super init];
    
    if (self) {
        _currentIndex = 0;
        _names = [FNLastNameSupplier fn_LastNames3];
    }
    
    return self;
}

#pragma mark Private Methods

- (NSString *)_nextLastName
{
    NSString *name = nil;
    if (self.currentIndex < self.names.count) {
        name = self.names[self.currentIndex];
        self.currentIndex++;
    }
    return name;
}

#pragma Testing Method

+ (void)singletonTest
{
    
    for (NSInteger i = 0; i < 20; i++) {
        NSString *name = [FNLastNameSupplier nextLastName];
        if (!name) {
            name = @"MISSING";
        }
        
        NSLog(@"Last Name is : %@", name);
    }
}

@end
