//
//  Photo.h
//  CollectionViewPractice2
//
//  Created by Kerry Toonen on 2016-01-30.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface Photo : NSObject

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *detail;

@property (nonatomic, strong) UIImage *image;

-(instancetype) initWithTitle:(NSString*)title image:(UIImage*)image detail:(NSString *)detail;
@end
