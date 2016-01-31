//
//  Photo.m
//  CollectionViewPractice2
//
//  Created by Kerry Toonen on 2016-01-30.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "Photo.h"

@implementation Photo

-(instancetype) initWithTitle:(NSString*)title image:(UIImage*)image detail:(NSString *)detail {
    self=[super init];
    if (self) {
        self.title=title;
        self.image=image;
        self.detail=detail;
    }
    return self;
}

@end
