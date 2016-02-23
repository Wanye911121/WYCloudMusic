//
//  AnchorStationViewController.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/31.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "AnchorStationViewController.h"
#import "ProgramCommandTableViewCell.h"
#import "HotStationCollectionViewCell.h"
#import "StationCommandCollectionViewCell.h"
#import "ScrollHeadCollectionViewCell.h"
#import "CommonHeadView.h"


static NSString * const programeTableCell = @"programCommand";
static NSString * const stationRecommandCell = @"stationcell";
static NSUInteger const stationRecomandTag = 1000;

static NSString * const stationHeadViewId = @"stationHeadView";

static NSString * const stationHotCell = @"hotstation";

static NSUInteger const stationHotTag = 1001;

static NSString * const hotHeadView = @"hothead";

static NSString * const scrollHead = @"scrollHead";



@interface AnchorStationViewController ()<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
{
    CGSize stationSize;
    CGSize hotSize;
    CGSize scrollSize;
    NSArray *_scrollArray;
    NSArray *_scrollImageArray;
}
@property (weak, nonatomic) IBOutlet UITableView *programRecommandView;
@property (weak, nonatomic) IBOutlet UICollectionView *stationRecomandView;

@property (weak, nonatomic) IBOutlet UICollectionView *hotStationView;
@property (weak, nonatomic) IBOutlet UICollectionView *scrollHeadView;
@end

@implementation AnchorStationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat stationItemWidth = (CGRectGetWidth([UIScreen mainScreen].bounds) - 40)/3;
    stationSize = CGSizeMake(stationItemWidth, stationItemWidth+20);
    
    CGFloat hotItemWidth = (CGRectGetWidth([UIScreen mainScreen].bounds) - 30)/2;
    hotSize = CGSizeMake(hotItemWidth, hotItemWidth+20);

    CGFloat scrollSizeWidth = (CGRectGetWidth([UIScreen mainScreen].bounds) - 50)/4;
    scrollSize = CGSizeMake(scrollSizeWidth, scrollSizeWidth);
    
    _scrollArray = @[@"明星做主播",@"创作|翻唱",@"脱口秀",@"有声读物",@"音乐故事",@"情感调频",@"人文历史",@"外语世界",@"二次元",@"人在旅途",@"娱乐八卦",@"偶像后援团",@"影视周边",@"校园",@"亲子宝贝",@"广播剧",@"相声曲艺",@"我要做主播"];
    
    _scrollImageArray = @[@"cm2_discover_icn_dj",@"cm2_discover_icn_mic",@"cm2_discover_icn_taklshow",@"cm2_discover_icn_voicebook",@"cm2_discover_icn_music",@"cm2_discover_icn_emotion",@"cm2_discover_icn_history",@"cm2_discover_icn_abc",@"cm2_discover_icn_comic",@"cm2_discover_icn_trip",@"cm2_discover_icn_variety",@"cm2_discover_icn_idol",@"cm2_discover_icn_movie",@"cm2_discover_icn_school",@"cm2_discover_icn_baby",@"cm2_discover_icn_drama",@"cm2_discover_icn_opera",@"cm2_discover_icn_apply"];
    
    CommonHeadView *headView = [[CommonHeadView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30) title:@"节目推荐"];
    self.programRecommandView.tableHeaderView = headView;
    
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_hotStationView reloadData];
    [_stationRecomandView reloadData];
    [_programRecommandView reloadData];
    [_scrollHeadView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProgramCommandTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:programeTableCell forIndexPath:indexPath];
    return cell;
}


#pragma mrak - CollectionViewDelegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView.tag == stationHotTag || collectionView.tag == stationRecomandTag) {
        return 6;
    }
    return _scrollArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView.tag == stationRecomandTag) {
        StationCommandCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:stationRecommandCell forIndexPath:indexPath];
        return cell;
    }else if (collectionView.tag == stationHotTag) {
        HotStationCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:stationHotCell forIndexPath:indexPath];
        return cell;
    } else {
        ScrollHeadCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:scrollHead forIndexPath:indexPath];
        cell.scrollTitleLabel.text = _scrollArray[indexPath.row];
        cell.scrollHeadImageView.image = [UIImage imageNamed:_scrollImageArray[indexPath.row]];
        return cell;
    }
    
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView.tag == stationRecomandTag) {
        UICollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:stationHeadViewId forIndexPath:indexPath];
        return view;
    } else if (collectionView.tag == stationHotTag) {
        UICollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:hotHeadView forIndexPath:indexPath];
        return view;
    } else {
        return nil;
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 10;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView.tag == stationRecomandTag) {
        return stationSize;
    }else if (collectionView.tag == stationHotTag) {
        return hotSize;
    }else {
        return scrollSize;
    }
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
