//
//  HomeViewController.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "HomeViewController.h"
#import "TextfieldView.h"

@interface HomeViewController ()
@property (nonatomic,strong) NSArray *classNames;
@property (nonatomic,strong) NSArray *titles;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.classNames = @[@"RecommendationViewController",@"SongsListViewController",@"AnchorStationViewController",@"RankListViewController"];
    self.titles = @[@"个性推荐",@"歌单",@"主播电台",@"排行榜"];
    
    [self setUpAllViewController];
    
    self.titleFont = [UIFont systemFontOfSize:15];
    
    self.titleScrollViewColor = RGB(248, 248, 249);
    
    // 是否显示标签
    self.isShowUnderLine = YES;
    
    // 标题填充模式
    self.underLineColor = [UIColor redColor];
    
    [self configNav];
    
}

- (void)configNav {
    TextfieldView *textFieldView = [[TextfieldView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH-100, 30)];
    self.navigationItem.titleView = textFieldView;

}

- (void)setUpAllViewController {
    
    for (int i = 0 ; i < 3 ; i++ ) {

        UIViewController *VC = [self.storyboard instantiateViewControllerWithIdentifier:self.classNames[i]];
        if (VC) {
            VC.title = _titles[i];
            [self addChildViewController:VC];
        }
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
