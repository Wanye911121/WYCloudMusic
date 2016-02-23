//
//  SongsListViewController.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/31.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "SongsListViewController.h"
#import "SongsListCollectionViewCell.h"
#import "SongsCollectionReusableView.h"


static NSString * const kSongsListCellID = @"songslist";
static NSString * const kSongsListHead = @"songshead";

@interface SongsListViewController ()<UICollectionViewDelegateFlowLayout>
{
    CGSize itemSize;
}
@property (weak, nonatomic) IBOutlet UICollectionView *songsListView;

@end

@implementation SongsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat itemWidth = (CGRectGetWidth([UIScreen mainScreen].bounds) - 30)/2;
    itemSize = CGSizeMake(itemWidth, itemWidth);
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_songsListView reloadData];
}


#pragma mrak - CollectionViewDelegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    SongsListCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kSongsListCellID forIndexPath:indexPath];
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    SongsCollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:kSongsListHead forIndexPath:indexPath];
    return view;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return itemSize;
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
