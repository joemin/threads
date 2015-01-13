//
//  Top.m
//  threads
//
//  Created by Joseph Min on 1/12/15.
//
//

#import "Top.h"

@implementation Top

-(id) init {
    if (!self) {
        self = [super init];
    }
    return self;
}

-(void) setTopImage:(UIImage *)image {
    self.image = image;
}

-(UIImage *) getTopImage {
    return self.image;
}

-(void) setTopDescription:(NSString *)description {
    self.description = description;
}

-(NSString *) getTopDescription {
    return self.description;
}

@end
