//
//  RecommendationViewController.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/31.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "RecommendationViewController.h"


@interface RecommendationViewController ()
{
    NSArray * _imageArray;
    NSArray * _titleArray;
}
@property (weak, nonatomic) IBOutlet SDCycleScrollView *cycleScrollView;

@end


IB_DESIGNABLE
@implementation RecommendationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageArray = @[@"",@"",@""];
    _titleArray = @[@"活动",@"明星访谈",@"MV首发"];
    [self setupCycleScrollView];
    
    // Do any additional setup after loading the view.
}

- (void)setupCycleScrollView {
    self.cycleScrollView.imageURLStringsGroup = _imageArray;
    self.cycleScrollView.titlesGroup = _titleArray;
    self.cycleScrollView.pageControlDotSize = CGSizeMake(5, 5);
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
