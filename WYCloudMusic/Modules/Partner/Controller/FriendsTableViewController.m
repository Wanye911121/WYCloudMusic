//
//  FriendsTableViewController.m
//  WYCloudMusic
//
//  Created by ZpyZp on 15/12/30.
//  Copyright © 2015年 zpy. All rights reserved.
//

#import "FriendsTableViewController.h"
#import "NeighborFootView.h"
#import "CloudNavigationController.h"
#import "LoginViewController.h"

static NSString *const partnerCell = @"partnerCell";
static NSString *const neighborCell = @"neighborCell";

typedef NS_ENUM(NSInteger, TableViewType) {
    PartnerType,
    NeighborType
};

@interface FriendsTableViewController ()<NeighborFootViewDelegate>
@property (nonatomic,assign) TableViewType tableViewType;
@end

@implementation FriendsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.estimatedRowHeight = 600 ;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"PartnerListTableViewCell" bundle:nil] forCellReuseIdentifier:partnerCell];
    [self.tableView registerNib:[UINib nibWithNibName:@"NeighborListTableViewCell" bundle:nil] forCellReuseIdentifier:neighborCell];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.tableViewType == NeighborType) {
        return 5;
    }else {
        return 15;
    }
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.tableViewType == NeighborType) {
        return 120;
    }
    return UITableViewAutomaticDimension;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.tableViewType == NeighborType) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:neighborCell forIndexPath:indexPath];
        return cell;
    }else {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:partnerCell forIndexPath:indexPath];
        return cell;
    }
}

//- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
//{
//    if (self.tableViewType == NeighborType) {
//        NeighborFootView *footView = [[NeighborFootView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
//        return footView;
//    }
//    return nil;
//}
//
//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    if (self.tableViewType == NeighborType) {
//        return 100;
//    }
//    return 1;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)segmentEvent:(UISegmentedControl *)sender {
    LxDBAnyVar(sender);
    if (sender.selectedSegmentIndex == 0) {
        self.tableViewType = PartnerType;
        self.tableView.tableFooterView = [UIView new];
    }else {
        self.tableViewType = NeighborType;
        NeighborFootView *footView = [[NeighborFootView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
        footView.delegate = self;
        self.tableView.tableFooterView = footView;
    }
    [self.tableView reloadData];
    
}

-(void)loginBtnDidClick
{
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    loginVC.loginType = partnerLogin;
    CloudNavigationController *nav = [[CloudNavigationController alloc] initWithRootViewController:loginVC];
    
    [self presentViewController:nav animated:YES completion:nil];
}

@end
