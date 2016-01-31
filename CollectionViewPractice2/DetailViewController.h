//
//  DetailViewController.h
//  CollectionViewPractice2
//
//  Created by Kerry Toonen on 2016-01-30.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UIImageView *detailImageView;

@property (strong, nonatomic) Photo *photo;

@end
