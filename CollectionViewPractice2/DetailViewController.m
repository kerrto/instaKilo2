//
//  DetailViewController.m
//  CollectionViewPractice2
//
//  Created by Kerry Toonen on 2016-01-30.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.titleLabel.text=self.photo.title;
    self.detailLabel.text=self.photo.detail;
    self.detailImageView.image=self.photo.image;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
