//
//  Integer+Display.m
//  studyObjc
//
//  Created by Yoka_build on 2022/7/30.
//

#import "Integer+Display.h"

@implementation Integer (Display)

- (id)showStars {
    NSInteger i, x = self.integer;
    for (i = 0; i < x; i++) {
        NSLog(@"*");
    }
    NSLog(@"\n");
    
    return self;
}
- (id)showInt {
    NSLog(@"%ld\n", self.integer);
    
    return self;
}

@end
