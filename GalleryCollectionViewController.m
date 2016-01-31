//
//  GalleryCollectionViewController.m
//  CollectionViewPractice2
//
//  Created by Kerry Toonen on 2016-01-30.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "GalleryCollectionViewController.h"
#import "Photo.h"
#import "MyCustomCell.h"
#import "DetailViewController.h"

@interface GalleryCollectionViewController ()

@property (nonatomic, strong) NSMutableArray *photos;

@end

@implementation GalleryCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.photos=[[NSMutableArray alloc]init];
    
    Photo *ecuador=[[Photo alloc]initWithTitle:@"Ecuador" image:([UIImage imageNamed:@"IMG_2817.JPG"]) detail:@"Pichincha Volcano, Ecuador"];
    
    Photo *moscow=[[Photo alloc] initWithTitle:@"Russia" image:([UIImage imageNamed:@"IMG_1317.JPG"]) detail:@"St. Basil's Cathedral in Russia"];
    
    Photo *china=[[Photo alloc] initWithTitle:@"China" image:([UIImage imageNamed:@"12307604_10101237952496791_7131598851998776503_o.jpg"]) detail:@"Tiger Leaping Gorge"];
    
    Photo *uganda=[[Photo alloc] initWithTitle:@"Uganda" image:([UIImage imageNamed:@"photo3.jpg"]) detail:@"Playboating in the Nile"];
    
    Photo *palauTrees=[[Photo alloc] initWithTitle:@"Palau" image:([UIImage imageNamed:@"photo4.jpg"]) detail:@"Pretty trees in Palau"];
    
    Photo *nepal=[[Photo alloc] initWithTitle:@"Nepal" image:([UIImage imageNamed:@"photo5.jpg"]) detail:@"Hills in Nepal"];
    
    Photo *istanbul=[[Photo alloc] initWithTitle:@"Turkey" image:([UIImage imageNamed:@"photo6.jpg"]) detail:@"Cieling in Topkapi Palace"];
    
    Photo *palauJellyfish=[[Photo alloc] initWithTitle:@"Jellyfish" image:([UIImage imageNamed:@"P1010229.jpg"]) detail:@"Jellyfish Lake in Palau"];
    
    Photo *laos=[[Photo alloc] initWithTitle:@"Laos" image:([UIImage imageNamed:@"IMG_2090.JPG"]) detail:@"Buddha Park"];
    
    Photo *bryce=[[Photo alloc] initWithTitle:@"United States" image:([UIImage imageNamed:@"IMG_2966.JPG"]) detail:@"Bryce Canyon, Utah"];
    
    [self.photos addObject:ecuador];
    [self.photos addObject:moscow];
    [self.photos addObject:china];
    [self.photos addObject:uganda];
    [self.photos addObject:palauTrees];
    [self.photos addObject:nepal];
    [self.photos addObject:istanbul];
    [self.photos addObject:palauJellyfish];
    [self.photos addObject:laos];
    [self.photos addObject:bryce];
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]isEqualToString:@"viewDetail"]) {
    
        DetailViewController *addVC=(DetailViewController *)
        [segue destinationViewController];
        
        NSIndexPath *indexPath=[self.collectionView indexPathForCell:sender];
        
        Photo *photo=self.photos[indexPath.row];
        addVC.photo=photo;
    }

}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.photos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MyCustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    Photo *photo=self.photos[indexPath.row];
    
    cell.photoView.image=photo.image;
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
