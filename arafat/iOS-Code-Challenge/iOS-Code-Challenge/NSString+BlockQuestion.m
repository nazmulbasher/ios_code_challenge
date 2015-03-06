//
//  NSString+BlockQuestion.m
//  iOS-Code-Challenge
//
//  Created by Daniel Worku on 3/5/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "NSString+BlockQuestion.h"

typedef void (^FNIndexSetBlock)(NSIndexSet *);


typedef enum {
    JSON = 0,
    XML = 1,
    Atom,
    RSS
} FormatType;


@implementation NSString (BlockQuestion)

+ (NSArray *)fn_LastNames1
{
    return @[@"appleseed", @"Worku", @"Crap", @"Nguyen", @"Smith"];
}

+ (NSArray *)fn_LastNames2
{
    return @[@"Appleseed", @"Worku", @"Crap", @"Nguyen", @"Smith", @"awesome"];
}


- (BOOL)formatTypeToString:(FormatType)formatType {
   
    [self sampleMe:@"fakeWord" withComppletion: {
    
        if (blockName) {
            fdsgdfsg
            
            sdfsdlfjkl
        }
    }]
}

- (BOOL)sampleMe:(NSString *)str1 withCompletionBlock:^(NSIndexSet *)blockName {
    
}
@end
