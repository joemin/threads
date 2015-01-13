//
//  Bottom.m
//  threads
//
//  Created by Joseph Min on 1/12/15.
//
//

#import "Bottom.h"

@implementation Bottom

-(id) init {
    if (!self) {
        self = [super init];
    }
    return self;
}

-(void) setBottomImage:(UIImage *)image {
    self.image = image;
}

-(UIImage *) getBottomImage {
    return self.image;
}

-(void) setBottomDescription:(NSString *)description {
    self.description = description;
}

-(NSString *) getBottomDescription {
    return self.description;
}

@end
